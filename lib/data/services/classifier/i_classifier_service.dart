import 'package:dartz/dartz.dart';
import 'package:inz/data/failures/failure/classifier_failure.dart';
import 'package:inz/models/camera/image.dart';
import 'package:inz/models/classification/classifier_result.dart';

abstract class IClassifierService {
  Future<void> loadModel();
  Future<Either<ClassifierFailure,ClassifierResult>> classifyImage(Image image);
  Future<void> closeModel();
}
