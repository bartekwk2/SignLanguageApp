import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:inz/data/services/lifecycle/i_lifecycle_service.dart';
import 'package:inz/models/enum/camera_activity.dart';
import 'package:rxdart/rxdart.dart';

@Singleton(as: ILifecycleService)
class LifecycleSerice with WidgetsBindingObserver implements ILifecycleService {
  final BehaviorSubject<CameraActivity> _cameraActivityStreamController =
      BehaviorSubject<CameraActivity>();

  @override
  Stream<CameraActivity> get cameraManagment =>
      _cameraActivityStreamController.stream;

  LifecycleSerice() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _cameraActivityStreamController.add(CameraActivity.cameraAble);
    }
    if (state == AppLifecycleState.inactive) {
      _cameraActivityStreamController.add(CameraActivity.cameraDisable);
    }
  }

  @override
  void closeCameraManagment() {
    _cameraActivityStreamController?.close();
  }
}
