import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inz/data/repositories/classifier/i_classifier_repository.dart';
import 'package:inz/models/classification/classifier_result.dart';

part 'classifier_event.dart';
part 'classifier_state.dart';
part 'classifier_bloc.freezed.dart';

@injectable
class ClassifierBloc extends Bloc<ClassifierEvent, ClassifierState> {
  final IClassifierRepository classifierRepository;
  StreamSubscription _streamSubscription;

  ClassifierBloc({this.classifierRepository}) : super(ClassifierState.empty()) {
    _streamSubscription =
        classifierRepository.videoStream.listen((classifierResult) {
      classifierResult.fold(
          (l) => this.add(
              ClassifierEvent.errorOccured(errorMsg: l.classifierFailureMsg)),
          (r) => this
              .add(ClassifierEvent.classificationResult(classifierResult: r)));
    });
  }

  @override
  Stream<ClassifierState> mapEventToState(ClassifierEvent event) async* {
    yield* event.map(
        beginClassification: (e) async* {
          await classifierRepository.beginClassification();
          dynamic cameraController = classifierRepository.cameraController;
          yield state.copyWith(cameraController: cameraController);
        },
        endClassification: (e) async* {
          await classifierRepository.endClassification();
        },
        classificationResult: (e) async* {
          yield state.copyWith(classifierResult: e.classifierResult);
        },
        prepareClassification: (e) async* {},
        errorOccured: (e) async* {
          yield state.copyWith(errorMessage: e.errorMsg, errorOccured: true);
        });
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
