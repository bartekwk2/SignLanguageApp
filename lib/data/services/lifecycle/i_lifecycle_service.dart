import 'package:inz/models/enum/camera_activity.dart';

abstract class ILifecycleService {
  Stream<CameraActivity> get cameraManagment;
  void closeCameraManagment();
}
