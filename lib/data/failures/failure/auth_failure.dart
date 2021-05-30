import 'package:inz/data/failures/failure/i_failure.dart';

class AuthFailure implements Failure {
  final String authFailureMsg;

  AuthFailure({this.authFailureMsg});
  @override
  String get message => authFailureMsg;
}
