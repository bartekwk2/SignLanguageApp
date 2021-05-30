import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:inz/data/failures/failure/classifier_failure.dart';
import 'package:inz/data/repositories/classifier/i_classifier_repository.dart';
import 'package:inz/data/services/camera/i_camera_service.dart';
import 'package:inz/data/services/classifier/i_classifier_service.dart';
import 'package:inz/data/services/lifecycle/i_lifecycle_service.dart';
import 'package:inz/data/services/permission/i_permission_service.dart';
import 'package:inz/models/classification/classifier_result.dart';
import 'package:inz/models/enum/camera_activity.dart';
import 'package:permission_handler/permission_handler.dart';

@Singleton(as: IClassifierRepository)
class ClassifierRepository implements IClassifierRepository {
  final ICameraService cameraService;
  final IClassifierService classifierService;
  final ILifecycleService lifecycleService;
  final IPermissionService permissionService;

  @override
  Stream<Either<ClassifierFailure, ClassifierResult>> get videoStream =>
      cameraService.videoStream.asyncMap((image) => image.fold(
          (l) => left(l), (r) => classifierService.classifyImage(r)));

  @override
  get cameraController => cameraService.getCameraController;

  ClassifierRepository(
      {this.cameraService,
      this.classifierService,
      this.lifecycleService,
      this.permissionService}) {
//
    lifecycleService.cameraManagment.listen((cameraActivity) {
      if (cameraActivity == CameraActivity.cameraAble) {
        cameraService.initializeCamera();
      } else if (cameraActivity == CameraActivity.cameraDisable) {
        cameraService.closeVideoStream();
      }
    });
  }

  @override
  Future<Either<ClassifierFailure, Unit>> beginClassification() async {
    PermissionStatus cameraPermission =
        await permissionService.cameraPermission();
    PermissionStatus microphonePermission =
        await permissionService.microphonePermission();

    if ((cameraPermission.isGranted || cameraPermission.isLimited) &&
        (microphonePermission.isGranted || microphonePermission.isLimited)) {
      //await classifierService.loadModel();
      await cameraService.startFetchingVideo();
      return right(unit);
    } else {
      return left(ClassifierFailure(
          classifierFailureMsg: "Nie zezwolono na dostęp do kamery/mikrofonu"));
    }
  }

  @override
  Future<void> endClassification() async {
    await cameraService.stopFetchingVideo();
  }
}
