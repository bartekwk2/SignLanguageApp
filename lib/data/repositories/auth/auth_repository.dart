import 'package:dartz/dartz.dart';
import 'package:inz/data/datasources/auth/google_auth_datasource.dart';
import 'package:inz/data/datasources/auth/i_auth_datasource.dart';
import 'package:inz/data/datasources/connectivity/i_connectivity_datasource.dart';
import 'package:inz/data/datasources/global_db/i_global_db_datasource.dart';
import 'package:inz/data/failures/exceptions/auth_exception.dart';
import 'package:inz/data/failures/failure/auth_failure.dart';
import 'package:inz/data/repositories/auth/i_auth_repository.dart';
import 'package:inz/models/auth/user.dart';
import 'package:inz/models/enum/auth_function.dart';
import 'package:inz/models/enum/gender.dart';
import 'package:inz/utills/validators.dart';

class AuthRepository implements IAuthRepository {
  final GoogleAuthDatasource googleDataSource;
  final IAuthDataSource authDataSource;
  final IGlobalDbDataSource globalDbDatasource;
  final IConnectivityDataSource connectivityDataSource;

  AuthRepository(
      {this.googleDataSource,
      this.authDataSource,
      this.globalDbDatasource,
      this.connectivityDataSource});

  @override
  Future<Either<AuthFailure, User>> login(String email, String password) async {
    if (Validators.emailValidation(email)) {
      if (Validators.passwordValidation(password)) {
        return _authenticate(
            authFunction: AuthFunction.login, email: email, password: password);
      } else {
        return left(AuthFailure(
            authFailureMsg: "Podano hasło w nieprawidłowym formacie"));
      }
    } else {
      return left(
          AuthFailure(authFailureMsg: "Podano mail w nieprawidłowym formacie"));
    }
  }

  @override
  Future<Either<AuthFailure, User>> register(String email, String password,
      String passwordRE, String name, int age, Gender gender) async {
    if (Validators.emailValidation(email)) {
      if (Validators.passwordValidation(password)) {
        if (Validators.passwordsSame(password, passwordRE)) {
          Map newUserData = {
            "email": email,
            "name": name,
            "age": age,
            "gender": gender
          };
          return _authenticate(
              authFunction: AuthFunction.register,
              email: email,
              password: password,
              newUserData: newUserData);
        } else {
          return left(AuthFailure(authFailureMsg: "Podano różne hasła"));
        }
      } else {
        return left(AuthFailure(
            authFailureMsg: "Podano hasło w nieprawidłowym formacie"));
      }
    } else {
      return left(
          AuthFailure(authFailureMsg: "Podano mail w nieprawidłowym formacie"));
    }
  }

  @override
  Future<Either<AuthFailure, User>> googleAuth() {
    return _authenticate(authFunction: AuthFunction.googleAuth);
  }

  @override
  Future<Either<AuthFailure, User>> getUser() async {
    return _authenticate(authFunction: AuthFunction.currentUser);
  }

  @override
  Future<void> setUser(User user) async {
    await globalDbDatasource.setCurrentUser(user);
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  Future<Either<AuthFailure, User>> _authenticate({
    AuthFunction authFunction,
    String email,
    String password,
    Map newUserData,
  }) async {
    if (await connectivityDataSource.isConnected) {
      try {
        User user = await _getUser(
            authFunction: authFunction,
            email: email,
            password: password,
            newUserData: newUserData);

        return right(user);
      } on AuthException catch (e) {
        return left(AuthFailure(authFailureMsg: e.errorMessage));
      } catch (e) {
        return left(
            AuthFailure(authFailureMsg: "Wystąpił błąd spróbuj ponownie"));
      }
    } else {
      return left(AuthFailure(authFailureMsg: "Brak połączenia z internetem"));
    }
  }

  Future<User> _getUser(
      {AuthFunction authFunction,
      String email,
      String password,
      Map newUserData}) async {
    switch (authFunction) {
      case AuthFunction.login:
        User user = await authDataSource.login(email, password);
        return user;
      case AuthFunction.register:
        User user = await authDataSource.register(email, password, newUserData);
        return user;
      case AuthFunction.googleAuth:
        User user = await googleDataSource.auth();
        return user;
      case AuthFunction.currentUser:
        User user = await globalDbDatasource.returnCurrentUser();
        return user;
      default:
        return User.empty();
    }
  }
}
