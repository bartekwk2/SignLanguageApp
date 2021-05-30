import 'package:dio/dio.dart';
import 'package:inz/data/datasources/auth/i_auth_datasource.dart';
import 'package:inz/data/failures/exceptions/auth_exception.dart';
import 'package:inz/models/auth/user.dart';

class AmazonAuthDatasource implements IAuthDataSource {
  final Dio dio;
  final String baseUrl = "https://testURL.pl";

  AmazonAuthDatasource({this.dio});

  @override
  Future<User> login(String email, String password) async {
    return perfromAuthentication(email, password, null, "login");
  }

  @override
  Future<User> register(String email, String password, Map userData) async {
    return perfromAuthentication(email, password, userData, "register");
  }

  Future<User> perfromAuthentication(
      String email, String password, dynamic data, String type) async {
    final response = await dio.post("$baseUrl/$type",
        queryParameters: {"email": email, "password": password}, data: data);
    final result = response.data["result"];
    if (response.statusCode == 200) {
      return User.fromJson(result);
    } else {
      throw AuthException(errorMessage: result);
    }
  }
}
