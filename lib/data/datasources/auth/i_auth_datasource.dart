import 'package:inz/models/auth/user.dart';

abstract class IAuthDataSource {
  Future<User> register(String email, String password, Map userData);
  Future<User> login(String email, String password);
}
