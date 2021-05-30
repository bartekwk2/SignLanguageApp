// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'classifier_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ClassifierEventTearOff {
  const _$ClassifierEventTearOff();

// ignore: unused_element
  _PrepareClassification prepareClassification() {
    return const _PrepareClassification();
  }

// ignore: unused_element
  _BeginClassification beginClassification() {
    return const _BeginClassification();
  }

// ignore: unused_element
  _EndClassification endClassification() {
    return const _EndClassification();
  }

// ignore: unused_element
  _ClassificationResult classificationResult(
      {ClassifierResult classifierResult}) {
    return _ClassificationResult(
      classifierResult: classifierResult,
    );
  }

// ignore: unused_element
  _ErrorOccured errorOccured({String errorMsg}) {
    return _ErrorOccured(
      errorMsg: errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ClassifierEvent = _$ClassifierEventTearOff();

/// @nodoc
mixin _$ClassifierEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prepareClassification(),
    @required TResult beginClassification(),
    @required TResult endClassification(),
    @required TResult classificationResult(ClassifierResult classifierResult),
    @required TResult errorOccured(String errorMsg),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prepareClassification(),
    TResult beginClassification(),
    TResult endClassification(),
    TResult classificationResult(ClassifierResult classifierResult),
    TResult errorOccured(String errorMsg),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prepareClassification(_PrepareClassification value),
    @required TResult beginClassification(_BeginClassification value),
    @required TResult endClassification(_EndClassification value),
    @required TResult classificationResult(_ClassificationResult value),
    @required TResult errorOccured(_ErrorOccured value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prepareClassification(_PrepareClassification value),
    TResult beginClassification(_BeginClassification value),
    TResult endClassification(_EndClassification value),
    TResult classificationResult(_ClassificationResult value),
    TResult errorOccured(_ErrorOccured value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ClassifierEventCopyWith<$Res> {
  factory $ClassifierEventCopyWith(
          ClassifierEvent value, $Res Function(ClassifierEvent) then) =
      _$ClassifierEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClassifierEventCopyWithImpl<$Res>
    implements $ClassifierEventCopyWith<$Res> {
  _$ClassifierEventCopyWithImpl(this._value, this._then);

  final ClassifierEvent _value;
  // ignore: unused_field
  final $Res Function(ClassifierEvent) _then;
}

/// @nodoc
abstract class _$PrepareClassificationCopyWith<$Res> {
  factory _$PrepareClassificationCopyWith(_PrepareClassification value,
          $Res Function(_PrepareClassification) then) =
      __$PrepareClassificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$PrepareClassificationCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$PrepareClassificationCopyWith<$Res> {
  __$PrepareClassificationCopyWithImpl(_PrepareClassification _value,
      $Res Function(_PrepareClassification) _then)
      : super(_value, (v) => _then(v as _PrepareClassification));

  @override
  _PrepareClassification get _value => super._value as _PrepareClassification;
}

/// @nodoc
class _$_PrepareClassification implements _PrepareClassification {
  const _$_PrepareClassification();

  @override
  String toString() {
    return 'ClassifierEvent.prepareClassification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PrepareClassification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prepareClassification(),
    @required TResult beginClassification(),
    @required TResult endClassification(),
    @required TResult classificationResult(ClassifierResult classifierResult),
    @required TResult errorOccured(String errorMsg),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return prepareClassification();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prepareClassification(),
    TResult beginClassification(),
    TResult endClassification(),
    TResult classificationResult(ClassifierResult classifierResult),
    TResult errorOccured(String errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (prepareClassification != null) {
      return prepareClassification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prepareClassification(_PrepareClassification value),
    @required TResult beginClassification(_BeginClassification value),
    @required TResult endClassification(_EndClassification value),
    @required TResult classificationResult(_ClassificationResult value),
    @required TResult errorOccured(_ErrorOccured value),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return prepareClassification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prepareClassification(_PrepareClassification value),
    TResult beginClassification(_BeginClassification value),
    TResult endClassification(_EndClassification value),
    TResult classificationResult(_ClassificationResult value),
    TResult errorOccured(_ErrorOccured value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (prepareClassification != null) {
      return prepareClassification(this);
    }
    return orElse();
  }
}

abstract class _PrepareClassification implements ClassifierEvent {
  const factory _PrepareClassification() = _$_PrepareClassification;
}

/// @nodoc
abstract class _$BeginClassificationCopyWith<$Res> {
  factory _$BeginClassificationCopyWith(_BeginClassification value,
          $Res Function(_BeginClassification) then) =
      __$BeginClassificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$BeginClassificationCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$BeginClassificationCopyWith<$Res> {
  __$BeginClassificationCopyWithImpl(
      _BeginClassification _value, $Res Function(_BeginClassification) _then)
      : super(_value, (v) => _then(v as _BeginClassification));

  @override
  _BeginClassification get _value => super._value as _BeginClassification;
}

/// @nodoc
class _$_BeginClassification implements _BeginClassification {
  const _$_BeginClassification();

  @override
  String toString() {
    return 'ClassifierEvent.beginClassification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BeginClassification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prepareClassification(),
    @required TResult beginClassification(),
    @required TResult endClassification(),
    @required TResult classificationResult(ClassifierResult classifierResult),
    @required TResult errorOccured(String errorMsg),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return beginClassification();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prepareClassification(),
    TResult beginClassification(),
    TResult endClassification(),
    TResult classificationResult(ClassifierResult classifierResult),
    TResult errorOccured(String errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (beginClassification != null) {
      return beginClassification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prepareClassification(_PrepareClassification value),
    @required TResult beginClassification(_BeginClassification value),
    @required TResult endClassification(_EndClassification value),
    @required TResult classificationResult(_ClassificationResult value),
    @required TResult errorOccured(_ErrorOccured value),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return beginClassification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prepareClassification(_PrepareClassification value),
    TResult beginClassification(_BeginClassification value),
    TResult endClassification(_EndClassification value),
    TResult classificationResult(_ClassificationResult value),
    TResult errorOccured(_ErrorOccured value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (beginClassification != null) {
      return beginClassification(this);
    }
    return orElse();
  }
}

abstract class _BeginClassification implements ClassifierEvent {
  const factory _BeginClassification() = _$_BeginClassification;
}

/// @nodoc
abstract class _$EndClassificationCopyWith<$Res> {
  factory _$EndClassificationCopyWith(
          _EndClassification value, $Res Function(_EndClassification) then) =
      __$EndClassificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$EndClassificationCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$EndClassificationCopyWith<$Res> {
  __$EndClassificationCopyWithImpl(
      _EndClassification _value, $Res Function(_EndClassification) _then)
      : super(_value, (v) => _then(v as _EndClassification));

  @override
  _EndClassification get _value => super._value as _EndClassification;
}

/// @nodoc
class _$_EndClassification implements _EndClassification {
  const _$_EndClassification();

  @override
  String toString() {
    return 'ClassifierEvent.endClassification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EndClassification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prepareClassification(),
    @required TResult beginClassification(),
    @required TResult endClassification(),
    @required TResult classificationResult(ClassifierResult classifierResult),
    @required TResult errorOccured(String errorMsg),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return endClassification();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prepareClassification(),
    TResult beginClassification(),
    TResult endClassification(),
    TResult classificationResult(ClassifierResult classifierResult),
    TResult errorOccured(String errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endClassification != null) {
      return endClassification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prepareClassification(_PrepareClassification value),
    @required TResult beginClassification(_BeginClassification value),
    @required TResult endClassification(_EndClassification value),
    @required TResult classificationResult(_ClassificationResult value),
    @required TResult errorOccured(_ErrorOccured value),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return endClassification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prepareClassification(_PrepareClassification value),
    TResult beginClassification(_BeginClassification value),
    TResult endClassification(_EndClassification value),
    TResult classificationResult(_ClassificationResult value),
    TResult errorOccured(_ErrorOccured value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endClassification != null) {
      return endClassification(this);
    }
    return orElse();
  }
}

abstract class _EndClassification implements ClassifierEvent {
  const factory _EndClassification() = _$_EndClassification;
}

/// @nodoc
abstract class _$ClassificationResultCopyWith<$Res> {
  factory _$ClassificationResultCopyWith(_ClassificationResult value,
          $Res Function(_ClassificationResult) then) =
      __$ClassificationResultCopyWithImpl<$Res>;
  $Res call({ClassifierResult classifierResult});
}

/// @nodoc
class __$ClassificationResultCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$ClassificationResultCopyWith<$Res> {
  __$ClassificationResultCopyWithImpl(
      _ClassificationResult _value, $Res Function(_ClassificationResult) _then)
      : super(_value, (v) => _then(v as _ClassificationResult));

  @override
  _ClassificationResult get _value => super._value as _ClassificationResult;

  @override
  $Res call({
    Object classifierResult = freezed,
  }) {
    return _then(_ClassificationResult(
      classifierResult: classifierResult == freezed
          ? _value.classifierResult
          : classifierResult as ClassifierResult,
    ));
  }
}

/// @nodoc
class _$_ClassificationResult implements _ClassificationResult {
  const _$_ClassificationResult({this.classifierResult});

  @override
  final ClassifierResult classifierResult;

  @override
  String toString() {
    return 'ClassifierEvent.classificationResult(classifierResult: $classifierResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClassificationResult &&
            (identical(other.classifierResult, classifierResult) ||
                const DeepCollectionEquality()
                    .equals(other.classifierResult, classifierResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(classifierResult);

  @JsonKey(ignore: true)
  @override
  _$ClassificationResultCopyWith<_ClassificationResult> get copyWith =>
      __$ClassificationResultCopyWithImpl<_ClassificationResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prepareClassification(),
    @required TResult beginClassification(),
    @required TResult endClassification(),
    @required TResult classificationResult(ClassifierResult classifierResult),
    @required TResult errorOccured(String errorMsg),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return classificationResult(classifierResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prepareClassification(),
    TResult beginClassification(),
    TResult endClassification(),
    TResult classificationResult(ClassifierResult classifierResult),
    TResult errorOccured(String errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (classificationResult != null) {
      return classificationResult(classifierResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prepareClassification(_PrepareClassification value),
    @required TResult beginClassification(_BeginClassification value),
    @required TResult endClassification(_EndClassification value),
    @required TResult classificationResult(_ClassificationResult value),
    @required TResult errorOccured(_ErrorOccured value),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return classificationResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prepareClassification(_PrepareClassification value),
    TResult beginClassification(_BeginClassification value),
    TResult endClassification(_EndClassification value),
    TResult classificationResult(_ClassificationResult value),
    TResult errorOccured(_ErrorOccured value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (classificationResult != null) {
      return classificationResult(this);
    }
    return orElse();
  }
}

abstract class _ClassificationResult implements ClassifierEvent {
  const factory _ClassificationResult({ClassifierResult classifierResult}) =
      _$_ClassificationResult;

  ClassifierResult get classifierResult;
  @JsonKey(ignore: true)
  _$ClassificationResultCopyWith<_ClassificationResult> get copyWith;
}

/// @nodoc
abstract class _$ErrorOccuredCopyWith<$Res> {
  factory _$ErrorOccuredCopyWith(
          _ErrorOccured value, $Res Function(_ErrorOccured) then) =
      __$ErrorOccuredCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class __$ErrorOccuredCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$ErrorOccuredCopyWith<$Res> {
  __$ErrorOccuredCopyWithImpl(
      _ErrorOccured _value, $Res Function(_ErrorOccured) _then)
      : super(_value, (v) => _then(v as _ErrorOccured));

  @override
  _ErrorOccured get _value => super._value as _ErrorOccured;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_ErrorOccured(
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
class _$_ErrorOccured implements _ErrorOccured {
  const _$_ErrorOccured({this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ClassifierEvent.errorOccured(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorOccured &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMsg);

  @JsonKey(ignore: true)
  @override
  _$ErrorOccuredCopyWith<_ErrorOccured> get copyWith =>
      __$ErrorOccuredCopyWithImpl<_ErrorOccured>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prepareClassification(),
    @required TResult beginClassification(),
    @required TResult endClassification(),
    @required TResult classificationResult(ClassifierResult classifierResult),
    @required TResult errorOccured(String errorMsg),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return errorOccured(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prepareClassification(),
    TResult beginClassification(),
    TResult endClassification(),
    TResult classificationResult(ClassifierResult classifierResult),
    TResult errorOccured(String errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (errorOccured != null) {
      return errorOccured(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prepareClassification(_PrepareClassification value),
    @required TResult beginClassification(_BeginClassification value),
    @required TResult endClassification(_EndClassification value),
    @required TResult classificationResult(_ClassificationResult value),
    @required TResult errorOccured(_ErrorOccured value),
  }) {
    assert(prepareClassification != null);
    assert(beginClassification != null);
    assert(endClassification != null);
    assert(classificationResult != null);
    assert(errorOccured != null);
    return errorOccured(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prepareClassification(_PrepareClassification value),
    TResult beginClassification(_BeginClassification value),
    TResult endClassification(_EndClassification value),
    TResult classificationResult(_ClassificationResult value),
    TResult errorOccured(_ErrorOccured value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (errorOccured != null) {
      return errorOccured(this);
    }
    return orElse();
  }
}

abstract class _ErrorOccured implements ClassifierEvent {
  const factory _ErrorOccured({String errorMsg}) = _$_ErrorOccured;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$ErrorOccuredCopyWith<_ErrorOccured> get copyWith;
}

/// @nodoc
class _$ClassifierStateTearOff {
  const _$ClassifierStateTearOff();

// ignore: unused_element
  _Empty empty(
      {ClassifierResult classifierResult,
      dynamic cameraController,
      bool errorOccured,
      String errorMessage}) {
    return _Empty(
      classifierResult: classifierResult,
      cameraController: cameraController,
      errorOccured: errorOccured,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ClassifierState = _$ClassifierStateTearOff();

/// @nodoc
mixin _$ClassifierState {
  ClassifierResult get classifierResult;
  dynamic get cameraController;
  bool get errorOccured;
  String get errorMessage;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult empty(ClassifierResult classifierResult,
            dynamic cameraController, bool errorOccured, String errorMessage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(ClassifierResult classifierResult, dynamic cameraController,
        bool errorOccured, String errorMessage),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ClassifierStateCopyWith<ClassifierState> get copyWith;
}

/// @nodoc
abstract class $ClassifierStateCopyWith<$Res> {
  factory $ClassifierStateCopyWith(
          ClassifierState value, $Res Function(ClassifierState) then) =
      _$ClassifierStateCopyWithImpl<$Res>;
  $Res call(
      {ClassifierResult classifierResult,
      dynamic cameraController,
      bool errorOccured,
      String errorMessage});
}

/// @nodoc
class _$ClassifierStateCopyWithImpl<$Res>
    implements $ClassifierStateCopyWith<$Res> {
  _$ClassifierStateCopyWithImpl(this._value, this._then);

  final ClassifierState _value;
  // ignore: unused_field
  final $Res Function(ClassifierState) _then;

  @override
  $Res call({
    Object classifierResult = freezed,
    Object cameraController = freezed,
    Object errorOccured = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      classifierResult: classifierResult == freezed
          ? _value.classifierResult
          : classifierResult as ClassifierResult,
      cameraController: cameraController == freezed
          ? _value.cameraController
          : cameraController as dynamic,
      errorOccured:
          errorOccured == freezed ? _value.errorOccured : errorOccured as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> implements $ClassifierStateCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call(
      {ClassifierResult classifierResult,
      dynamic cameraController,
      bool errorOccured,
      String errorMessage});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$ClassifierStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object classifierResult = freezed,
    Object cameraController = freezed,
    Object errorOccured = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_Empty(
      classifierResult: classifierResult == freezed
          ? _value.classifierResult
          : classifierResult as ClassifierResult,
      cameraController: cameraController == freezed
          ? _value.cameraController
          : cameraController as dynamic,
      errorOccured:
          errorOccured == freezed ? _value.errorOccured : errorOccured as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_Empty implements _Empty {
  const _$_Empty(
      {this.classifierResult,
      this.cameraController,
      this.errorOccured,
      this.errorMessage});

  @override
  final ClassifierResult classifierResult;
  @override
  final dynamic cameraController;
  @override
  final bool errorOccured;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ClassifierState.empty(classifierResult: $classifierResult, cameraController: $cameraController, errorOccured: $errorOccured, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty &&
            (identical(other.classifierResult, classifierResult) ||
                const DeepCollectionEquality()
                    .equals(other.classifierResult, classifierResult)) &&
            (identical(other.cameraController, cameraController) ||
                const DeepCollectionEquality()
                    .equals(other.cameraController, cameraController)) &&
            (identical(other.errorOccured, errorOccured) ||
                const DeepCollectionEquality()
                    .equals(other.errorOccured, errorOccured)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(classifierResult) ^
      const DeepCollectionEquality().hash(cameraController) ^
      const DeepCollectionEquality().hash(errorOccured) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult empty(ClassifierResult classifierResult,
            dynamic cameraController, bool errorOccured, String errorMessage),
  }) {
    assert(empty != null);
    return empty(
        classifierResult, cameraController, errorOccured, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(ClassifierResult classifierResult, dynamic cameraController,
        bool errorOccured, String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(
          classifierResult, cameraController, errorOccured, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty value),
  }) {
    assert(empty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements ClassifierState {
  const factory _Empty(
      {ClassifierResult classifierResult,
      dynamic cameraController,
      bool errorOccured,
      String errorMessage}) = _$_Empty;

  @override
  ClassifierResult get classifierResult;
  @override
  dynamic get cameraController;
  @override
  bool get errorOccured;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith;
}
