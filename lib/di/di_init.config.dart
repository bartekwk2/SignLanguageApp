// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/classifier_bloc/classifier_bloc.dart' as _i3;
import '../data/repositories/classifier/classifier_repository.dart' as _i13;
import '../data/repositories/classifier/i_classifier_repository.dart' as _i4;
import '../data/services/camera/camera_service.dart' as _i6;
import '../data/services/camera/i_camera_service.dart' as _i5;
import '../data/services/classifier/i_classifier_service.dart' as _i7;
import '../data/services/classifier/tensorflow_classifier_service.dart' as _i8;
import '../data/services/lifecycle/i_lifecycle_service.dart' as _i9;
import '../data/services/lifecycle/lifecycle_service.dart' as _i10;
import '../data/services/permission/i_permission_service.dart' as _i11;
import '../data/services/permission/permission_service.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ClassifierBloc>(() => _i3.ClassifierBloc(
      classifierRepository: get<_i4.IClassifierRepository>()));
  gh.singleton<_i5.ICameraService>(_i6.CameraService());
  gh.singleton<_i7.IClassifierService>(_i8.TensorflowClassifierSerive());
  gh.singleton<_i9.ILifecycleService>(_i10.LifecycleSerice());
  gh.singleton<_i11.IPermissionService>(_i12.PermissionService());
  gh.singleton<_i4.IClassifierRepository>(_i13.ClassifierRepository(
      cameraService: get<_i5.ICameraService>(),
      classifierService: get<_i7.IClassifierService>(),
      lifecycleService: get<_i9.ILifecycleService>(),
      permissionService: get<_i11.IPermissionService>()));
  return get;
}
