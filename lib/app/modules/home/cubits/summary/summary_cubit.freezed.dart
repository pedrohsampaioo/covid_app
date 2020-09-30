// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'summary_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SummaryStateTearOff {
  const _$SummaryStateTearOff();

// ignore: unused_element
  SummaryStateStarted started() {
    return const SummaryStateStarted();
  }

// ignore: unused_element
  SummaryStateLoadInProgress loadInProgress() {
    return const SummaryStateLoadInProgress();
  }

// ignore: unused_element
  SummaryStateLoadSuccess loadSuccess(SummaryModel data) {
    return SummaryStateLoadSuccess(
      data,
    );
  }

// ignore: unused_element
  SummaryStateLoadFailure loadFailure(Failure failure) {
    return SummaryStateLoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $SummaryState = _$SummaryStateTearOff();

mixin _$SummaryState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(SummaryModel data),
    @required Result loadFailure(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(SummaryModel data),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(SummaryStateStarted value),
    @required Result loadInProgress(SummaryStateLoadInProgress value),
    @required Result loadSuccess(SummaryStateLoadSuccess value),
    @required Result loadFailure(SummaryStateLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(SummaryStateStarted value),
    Result loadInProgress(SummaryStateLoadInProgress value),
    Result loadSuccess(SummaryStateLoadSuccess value),
    Result loadFailure(SummaryStateLoadFailure value),
    @required Result orElse(),
  });
}

abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res>;
}

class _$SummaryStateCopyWithImpl<$Res> implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  final SummaryState _value;
  // ignore: unused_field
  final $Res Function(SummaryState) _then;
}

abstract class $SummaryStateStartedCopyWith<$Res> {
  factory $SummaryStateStartedCopyWith(
          SummaryStateStarted value, $Res Function(SummaryStateStarted) then) =
      _$SummaryStateStartedCopyWithImpl<$Res>;
}

class _$SummaryStateStartedCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res>
    implements $SummaryStateStartedCopyWith<$Res> {
  _$SummaryStateStartedCopyWithImpl(
      SummaryStateStarted _value, $Res Function(SummaryStateStarted) _then)
      : super(_value, (v) => _then(v as SummaryStateStarted));

  @override
  SummaryStateStarted get _value => super._value as SummaryStateStarted;
}

class _$SummaryStateStarted implements SummaryStateStarted {
  const _$SummaryStateStarted();

  @override
  String toString() {
    return 'SummaryState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SummaryStateStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(SummaryModel data),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(SummaryModel data),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(SummaryStateStarted value),
    @required Result loadInProgress(SummaryStateLoadInProgress value),
    @required Result loadSuccess(SummaryStateLoadSuccess value),
    @required Result loadFailure(SummaryStateLoadFailure value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(SummaryStateStarted value),
    Result loadInProgress(SummaryStateLoadInProgress value),
    Result loadSuccess(SummaryStateLoadSuccess value),
    Result loadFailure(SummaryStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class SummaryStateStarted implements SummaryState {
  const factory SummaryStateStarted() = _$SummaryStateStarted;
}

abstract class $SummaryStateLoadInProgressCopyWith<$Res> {
  factory $SummaryStateLoadInProgressCopyWith(SummaryStateLoadInProgress value,
          $Res Function(SummaryStateLoadInProgress) then) =
      _$SummaryStateLoadInProgressCopyWithImpl<$Res>;
}

class _$SummaryStateLoadInProgressCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res>
    implements $SummaryStateLoadInProgressCopyWith<$Res> {
  _$SummaryStateLoadInProgressCopyWithImpl(SummaryStateLoadInProgress _value,
      $Res Function(SummaryStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as SummaryStateLoadInProgress));

  @override
  SummaryStateLoadInProgress get _value =>
      super._value as SummaryStateLoadInProgress;
}

class _$SummaryStateLoadInProgress implements SummaryStateLoadInProgress {
  const _$SummaryStateLoadInProgress();

  @override
  String toString() {
    return 'SummaryState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SummaryStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(SummaryModel data),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(SummaryModel data),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(SummaryStateStarted value),
    @required Result loadInProgress(SummaryStateLoadInProgress value),
    @required Result loadSuccess(SummaryStateLoadSuccess value),
    @required Result loadFailure(SummaryStateLoadFailure value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(SummaryStateStarted value),
    Result loadInProgress(SummaryStateLoadInProgress value),
    Result loadSuccess(SummaryStateLoadSuccess value),
    Result loadFailure(SummaryStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class SummaryStateLoadInProgress implements SummaryState {
  const factory SummaryStateLoadInProgress() = _$SummaryStateLoadInProgress;
}

abstract class $SummaryStateLoadSuccessCopyWith<$Res> {
  factory $SummaryStateLoadSuccessCopyWith(SummaryStateLoadSuccess value,
          $Res Function(SummaryStateLoadSuccess) then) =
      _$SummaryStateLoadSuccessCopyWithImpl<$Res>;
  $Res call({SummaryModel data});
}

class _$SummaryStateLoadSuccessCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res>
    implements $SummaryStateLoadSuccessCopyWith<$Res> {
  _$SummaryStateLoadSuccessCopyWithImpl(SummaryStateLoadSuccess _value,
      $Res Function(SummaryStateLoadSuccess) _then)
      : super(_value, (v) => _then(v as SummaryStateLoadSuccess));

  @override
  SummaryStateLoadSuccess get _value => super._value as SummaryStateLoadSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(SummaryStateLoadSuccess(
      data == freezed ? _value.data : data as SummaryModel,
    ));
  }
}

class _$SummaryStateLoadSuccess implements SummaryStateLoadSuccess {
  const _$SummaryStateLoadSuccess(this.data) : assert(data != null);

  @override
  final SummaryModel data;

  @override
  String toString() {
    return 'SummaryState.loadSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SummaryStateLoadSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $SummaryStateLoadSuccessCopyWith<SummaryStateLoadSuccess> get copyWith =>
      _$SummaryStateLoadSuccessCopyWithImpl<SummaryStateLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(SummaryModel data),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(SummaryModel data),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(SummaryStateStarted value),
    @required Result loadInProgress(SummaryStateLoadInProgress value),
    @required Result loadSuccess(SummaryStateLoadSuccess value),
    @required Result loadFailure(SummaryStateLoadFailure value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(SummaryStateStarted value),
    Result loadInProgress(SummaryStateLoadInProgress value),
    Result loadSuccess(SummaryStateLoadSuccess value),
    Result loadFailure(SummaryStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class SummaryStateLoadSuccess implements SummaryState {
  const factory SummaryStateLoadSuccess(SummaryModel data) =
      _$SummaryStateLoadSuccess;

  SummaryModel get data;
  $SummaryStateLoadSuccessCopyWith<SummaryStateLoadSuccess> get copyWith;
}

abstract class $SummaryStateLoadFailureCopyWith<$Res> {
  factory $SummaryStateLoadFailureCopyWith(SummaryStateLoadFailure value,
          $Res Function(SummaryStateLoadFailure) then) =
      _$SummaryStateLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$SummaryStateLoadFailureCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res>
    implements $SummaryStateLoadFailureCopyWith<$Res> {
  _$SummaryStateLoadFailureCopyWithImpl(SummaryStateLoadFailure _value,
      $Res Function(SummaryStateLoadFailure) _then)
      : super(_value, (v) => _then(v as SummaryStateLoadFailure));

  @override
  SummaryStateLoadFailure get _value => super._value as SummaryStateLoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(SummaryStateLoadFailure(
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$SummaryStateLoadFailure implements SummaryStateLoadFailure {
  const _$SummaryStateLoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SummaryState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SummaryStateLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $SummaryStateLoadFailureCopyWith<SummaryStateLoadFailure> get copyWith =>
      _$SummaryStateLoadFailureCopyWithImpl<SummaryStateLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(SummaryModel data),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(SummaryModel data),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(SummaryStateStarted value),
    @required Result loadInProgress(SummaryStateLoadInProgress value),
    @required Result loadSuccess(SummaryStateLoadSuccess value),
    @required Result loadFailure(SummaryStateLoadFailure value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(SummaryStateStarted value),
    Result loadInProgress(SummaryStateLoadInProgress value),
    Result loadSuccess(SummaryStateLoadSuccess value),
    Result loadFailure(SummaryStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class SummaryStateLoadFailure implements SummaryState {
  const factory SummaryStateLoadFailure(Failure failure) =
      _$SummaryStateLoadFailure;

  Failure get failure;
  $SummaryStateLoadFailureCopyWith<SummaryStateLoadFailure> get copyWith;
}
