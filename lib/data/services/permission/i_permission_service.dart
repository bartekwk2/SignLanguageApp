import 'package:permission_handler/permission_handler.dart';

abstract class IPermissionService {
  Future<PermissionStatus> cameraPermission();
  Future<PermissionStatus> microphonePermission();
}
