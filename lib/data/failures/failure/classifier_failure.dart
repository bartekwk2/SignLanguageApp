import 'package:inz/data/failures/failure/i_failure.dart';

class ClassifierFailure implements Failure {
  final String classifierFailureMsg;

  ClassifierFailure({this.classifierFailureMsg});
  @override
  String get message => classifierFailureMsg;
}
