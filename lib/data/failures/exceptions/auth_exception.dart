class AuthException implements Exception {
  final String errorMessage;
  final int errorCode;
  AuthException({this.errorMessage, this.errorCode});
}
