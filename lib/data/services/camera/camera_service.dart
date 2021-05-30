import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:inz/data/failures/failure/classifier_failure.dart';
import 'package:inz/data/services/camera/i_camera_service.dart';
import 'package:inz/models/camera/image.dart';
import 'package:rxdart/rxdart.dart';

@Singleton(as: ICameraService)
class CameraService implements ICameraService {
  final BehaviorSubject<Either<ClassifierFailure, Image>>
      _videoStreamController =
      BehaviorSubject<Either<ClassifierFailure, Image>>();

  CameraController cameraController;

  @override
  Stream<Either<ClassifierFailure, Image>> get videoStream =>
      _videoStreamController.stream;

  @override
  get getCameraController => cameraController;

  CameraService();

  @override
  Future<void> initializeCamera() async {
    try {
      List<CameraDescription> cameras = await availableCameras();
      if (cameraController != null) {
        await cameraController.dispose();
      }
      cameraController = CameraController(cameras[0], ResolutionPreset.medium);
      await cameraController.initialize();
    } on CameraException catch (_) {
      _videoStreamController.add(left(ClassifierFailure(
          classifierFailureMsg: "Błąd podczas inicjalizacji kamery")));
    }
  }

  @override
  Future<void> startFetchingVideo() async {
    try {
      if (cameraController == null) {
        await initializeCamera();
      }
      await cameraController.startImageStream((image) =>
          _videoStreamController.add(right(_mapCameraImageToImage(image))));
    } on CameraException catch (_) {
      _videoStreamController.add(left(ClassifierFailure(
          classifierFailureMsg: "Błąd podczas odtwaraznia obrazu")));
    }
  }

  @override
  Future<void> stopFetchingVideo() async {
    try {
      await cameraController.stopImageStream();
    } on CameraException catch (_) {
      _videoStreamController.add(left(ClassifierFailure(
          classifierFailureMsg: "Błąd podczas zatrzymania odtwarzania")));
    }
  }

  @override
  void closeVideoStream() {
    _videoStreamController?.close();
    cameraController?.dispose();
  }

  Image _mapCameraImageToImage(CameraImage cameraImage) => Image(
      width: cameraImage.width,
      height: cameraImage.height,
      pixels: cameraImage.planes.map((plane) => plane.bytes).toList());
}
