import 'package:inz/models/auth/user.dart';

import 'i_global_db_datasource.dart';

class AmazonDatasource implements IGlobalDbDataSource {
  @override
  Future<User> returnCurrentUser() {
    // TODO: implement returnCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<void> setCurrentUser(User user) {
    // TODO: implement setCurrentUser
    throw UnimplementedError();
  }


}