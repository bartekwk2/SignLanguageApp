import 'package:dartz/dartz.dart';
import 'package:inz/data/failures/failure/auth_failure.dart';
import 'package:inz/models/auth/user.dart';
import 'package:inz/models/enum/gender.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, User>> register(String email, String password,
      String passwordRE, String name, int age, Gender gender);
  Future<Either<AuthFailure, User>> login(String email, String password);
  Future<Either<AuthFailure, User>> getUser();
  Future<Either<AuthFailure, User>> googleAuth();
  Future<bool> logout();
  Future<void> setUser(User user);
}
