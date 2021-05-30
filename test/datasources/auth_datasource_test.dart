import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inz/data/datasources/auth/amazon_auth_datasource.dart';
import 'package:inz/data/datasources/auth/i_auth_datasource.dart';
import 'package:inz/models/auth/user.dart';
import 'package:mockito/mockito.dart';
import 'dart:convert';
import '../test_resources/json_reader.dart';

class DioMock extends Mock implements Dio {}

IAuthDataSource authDataSource;
Dio dio;

final String email = "bartekwk@wp.pl";
final String password = "Proba123";
final String baseUrl = "https://testURL.pl";
final String id = "123";
final String name = "Bogdan";
final int age = 12;
final User user = User(age: age, name: name, id: id, mail: email);

void main() {
  setUp(() {
    authDataSource = AmazonAuthDatasource();
    dio = DioMock();
  });

  void successUserResponse() {
    when(dio.post(any,
            queryParameters: anyNamed('queryParameters'),
            data: anyNamed('data')))
        .thenAnswer((_) async =>
            Response(statusCode: 200, data: json.decode(jsonString('user'))));
  }

  void failPostResponse() {
    when(dio.post(any,
            queryParameters: anyNamed('queryParameters'),
            data: anyNamed('data')))
        .thenAnswer((_) async => Response(
            statusCode: 500, data: json.decode(jsonString('failure'))));
  }

  group("Succesfull authentication", () {
    test("Login", () async {
      successUserResponse();
      final result =
          await AmazonAuthDatasource(dio: dio).login(email, password);
      expect(result, isA<User>());
      verify(dio.post(baseUrl + "/login",
          queryParameters: {"email": email, "password": password}));
      verifyNoMoreInteractions(dio);
    });

    test("Register", () async {
      successUserResponse();
      final result = await AmazonAuthDatasource(dio: dio)
          .register(email, password, user.toJson());
      expect(result, isA<User>());
      verify(dio.post(baseUrl + "/register",
          queryParameters: {"email": email, "password": password},
          data: user.toJson()));
      verifyNoMoreInteractions(dio);
    });
  });

  group("Unsuccesfull authentication", () {
    test("Login", () async {
      failPostResponse();
      final result = AmazonAuthDatasource(dio: dio).login(email, password);
      expect(result, throwsException);
      verify(dio.post(baseUrl + "/login",
          queryParameters: {"email": email, "password": password}));
      verifyNoMoreInteractions(dio);
    });

    test("Register", () async {
      failPostResponse();
      final result = AmazonAuthDatasource(dio: dio)
          .register(email, password, user.toJson());
      expect(result, throwsException);
      verify(dio.post(baseUrl + "/register",
          queryParameters: {"email": email, "password": password},
          data: user.toJson()));
      verifyNoMoreInteractions(dio);
    });
  });
}
