import 'package:injectable/injectable.dart';
import 'package:inz/data/services/permission/i_permission_service.dart';
import 'package:permission_handler/permission_handler.dart';

@Singleton(as: IPermissionService)
class PermissionService implements IPermissionService {
  @override
  Future<PermissionStatus> cameraPermission() async {
    return Permission.camera.request();
  }

  @override
  Future<PermissionStatus> microphonePermission() async {
    return Permission.microphone.request();
  }
}
