import 'package:dartz/dartz.dart';
import 'package:inz/data/failures/failure/classifier_failure.dart';
import 'package:inz/models/classification/classifier_result.dart';

abstract class IClassifierRepository {
  Future<Either<ClassifierFailure,Unit>> beginClassification();

  Future<void> endClassification();

  Stream<Either<ClassifierFailure,ClassifierResult>> get videoStream;

  dynamic get cameraController;
}
