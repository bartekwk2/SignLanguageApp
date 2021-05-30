part of 'classifier_bloc.dart';

@freezed
abstract class ClassifierState with _$ClassifierState {
  const factory ClassifierState.empty(
      {ClassifierResult classifierResult,
      dynamic cameraController,
      bool errorOccured,
      String errorMessage}) = _Empty;
}
