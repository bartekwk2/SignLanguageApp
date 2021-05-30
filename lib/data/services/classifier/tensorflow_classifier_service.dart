import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:inz/data/failures/failure/classifier_failure.dart';
import 'package:inz/data/services/classifier/i_classifier_service.dart';
import 'package:inz/models/camera/image.dart';
import 'package:inz/models/classification/classifier_result.dart';
import 'package:tflite/tflite.dart';

@Singleton(as: IClassifierService)
class TensorflowClassifierSerive implements IClassifierService {
  @override
  Future<Either<ClassifierFailure, ClassifierResult>> classifyImage(
      Image image) async {
    try {
      var output = await Tflite.runModelOnFrame(
          bytesList: image.pixels,
          imageHeight: image.height,
          imageWidth: image.width,
          threshold: 0.5,
          imageMean: 127.5,
          imageStd: 127.5);

      if (output.length > 0) {
        var bestClassified = output[0];
        return right(ClassifierResult(
            confidence: bestClassified["confidence"],
            index: bestClassified["index"],
            label: bestClassified["label"]));
      } else {
        return left(
            ClassifierFailure(classifierFailureMsg: "Nie znaleziono znaku"));
      }
    } catch (e) {
      return left(
          ClassifierFailure(classifierFailureMsg: "Błąd podczas klasyfikacji"));
    }
  }

  @override
  Future<void> loadModel() async {
    try {
      await Tflite.loadModel(
          model: "assets/tf/mobilegestureClassifier.tflite",
          labels: "assets/tf/labels.txt");
    } catch (e) {
      throw ClassifierFailure(
          classifierFailureMsg: "Błąd podczas ładowania modelu klasyfikacji");
    }
  }

  @override
  Future<void> closeModel() async {
    await Tflite.close();
  }
}
