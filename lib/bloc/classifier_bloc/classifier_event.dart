part of 'classifier_bloc.dart';

@freezed
abstract class ClassifierEvent with _$ClassifierEvent {
  const factory ClassifierEvent.prepareClassification() =
      _PrepareClassification;
  const factory ClassifierEvent.beginClassification() = _BeginClassification;
  const factory ClassifierEvent.endClassification() = _EndClassification;
  const factory ClassifierEvent.classificationResult(
      {ClassifierResult classifierResult}) = _ClassificationResult;
  const factory ClassifierEvent.errorOccured({String errorMsg}) = _ErrorOccured;
}
