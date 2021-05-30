import 'package:inz/models/auth/user.dart';

abstract class IGlobalDbDataSource {
  Future<User> returnCurrentUser();
  Future<void> setCurrentUser(User user);
}
