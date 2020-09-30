// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'historic_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HistoricStateTearOff {
  const _$HistoricStateTearOff();

// ignore: unused_element
  HistoricStateStarted started() {
    return const HistoricStateStarted();
  }

// ignore: unused_element
  HistoricStateLoadInProgress loadInProgress() {
    return const HistoricStateLoadInProgress();
  }

// ignore: unused_element
  HistoricStateLoadSuccess loadSuccess(HistoricModel information) {
    return HistoricStateLoadSuccess(
      information,
    );
  }

// ignore: unused_element
  HistoricStateLoadFailure loadFailure(Failure failure) {
    return HistoricStateLoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $HistoricState = _$HistoricStateTearOff();

mixin _$HistoricState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(HistoricModel information),
    @required Result loadFailure(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(HistoricModel information),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(HistoricStateStarted value),
    @required Result loadInProgress(HistoricStateLoadInProgress value),
    @required Result loadSuccess(HistoricStateLoadSuccess value),
    @required Result loadFailure(HistoricStateLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(HistoricStateStarted value),
    Result loadInProgress(HistoricStateLoadInProgress value),
    Result loadSuccess(HistoricStateLoadSuccess value),
    Result loadFailure(HistoricStateLoadFailure value),
    @required Result orElse(),
  });
}

abstract class $HistoricStateCopyWith<$Res> {
  factory $HistoricStateCopyWith(
          HistoricState value, $Res Function(HistoricState) then) =
      _$HistoricStateCopyWithImpl<$Res>;
}

class _$HistoricStateCopyWithImpl<$Res>
    implements $HistoricStateCopyWith<$Res> {
  _$HistoricStateCopyWithImpl(this._value, this._then);

  final HistoricState _value;
  // ignore: unused_field
  final $Res Function(HistoricState) _then;
}

abstract class $HistoricStateStartedCopyWith<$Res> {
  factory $HistoricStateStartedCopyWith(HistoricStateStarted value,
          $Res Function(HistoricStateStarted) then) =
      _$HistoricStateStartedCopyWithImpl<$Res>;
}

class _$HistoricStateStartedCopyWithImpl<$Res>
    extends _$HistoricStateCopyWithImpl<$Res>
    implements $HistoricStateStartedCopyWith<$Res> {
  _$HistoricStateStartedCopyWithImpl(
      HistoricStateStarted _value, $Res Function(HistoricStateStarted) _then)
      : super(_value, (v) => _then(v as HistoricStateStarted));

  @override
  HistoricStateStarted get _value => super._value as HistoricStateStarted;
}

class _$HistoricStateStarted implements HistoricStateStarted {
  const _$HistoricStateStarted();

  @override
  String toString() {
    return 'HistoricState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HistoricStateStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(HistoricModel information),
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
    Result loadSuccess(HistoricModel information),
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
    @required Result started(HistoricStateStarted value),
    @required Result loadInProgress(HistoricStateLoadInProgress value),
    @required Result loadSuccess(HistoricStateLoadSuccess value),
    @required Result loadFailure(HistoricStateLoadFailure value),
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
    Result started(HistoricStateStarted value),
    Result loadInProgress(HistoricStateLoadInProgress value),
    Result loadSuccess(HistoricStateLoadSuccess value),
    Result loadFailure(HistoricStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class HistoricStateStarted implements HistoricState {
  const factory HistoricStateStarted() = _$HistoricStateStarted;
}

abstract class $HistoricStateLoadInProgressCopyWith<$Res> {
  factory $HistoricStateLoadInProgressCopyWith(
          HistoricStateLoadInProgress value,
          $Res Function(HistoricStateLoadInProgress) then) =
      _$HistoricStateLoadInProgressCopyWithImpl<$Res>;
}

class _$HistoricStateLoadInProgressCopyWithImpl<$Res>
    extends _$HistoricStateCopyWithImpl<$Res>
    implements $HistoricStateLoadInProgressCopyWith<$Res> {
  _$HistoricStateLoadInProgressCopyWithImpl(HistoricStateLoadInProgress _value,
      $Res Function(HistoricStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as HistoricStateLoadInProgress));

  @override
  HistoricStateLoadInProgress get _value =>
      super._value as HistoricStateLoadInProgress;
}

class _$HistoricStateLoadInProgress implements HistoricStateLoadInProgress {
  const _$HistoricStateLoadInProgress();

  @override
  String toString() {
    return 'HistoricState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HistoricStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(HistoricModel information),
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
    Result loadSuccess(HistoricModel information),
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
    @required Result started(HistoricStateStarted value),
    @required Result loadInProgress(HistoricStateLoadInProgress value),
    @required Result loadSuccess(HistoricStateLoadSuccess value),
    @required Result loadFailure(HistoricStateLoadFailure value),
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
    Result started(HistoricStateStarted value),
    Result loadInProgress(HistoricStateLoadInProgress value),
    Result loadSuccess(HistoricStateLoadSuccess value),
    Result loadFailure(HistoricStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class HistoricStateLoadInProgress implements HistoricState {
  const factory HistoricStateLoadInProgress() = _$HistoricStateLoadInProgress;
}

abstract class $HistoricStateLoadSuccessCopyWith<$Res> {
  factory $HistoricStateLoadSuccessCopyWith(HistoricStateLoadSuccess value,
          $Res Function(HistoricStateLoadSuccess) then) =
      _$HistoricStateLoadSuccessCopyWithImpl<$Res>;
  $Res call({HistoricModel information});
}

class _$HistoricStateLoadSuccessCopyWithImpl<$Res>
    extends _$HistoricStateCopyWithImpl<$Res>
    implements $HistoricStateLoadSuccessCopyWith<$Res> {
  _$HistoricStateLoadSuccessCopyWithImpl(HistoricStateLoadSuccess _value,
      $Res Function(HistoricStateLoadSuccess) _then)
      : super(_value, (v) => _then(v as HistoricStateLoadSuccess));

  @override
  HistoricStateLoadSuccess get _value =>
      super._value as HistoricStateLoadSuccess;

  @override
  $Res call({
    Object information = freezed,
  }) {
    return _then(HistoricStateLoadSuccess(
      information == freezed
          ? _value.information
          : information as HistoricModel,
    ));
  }
}

class _$HistoricStateLoadSuccess implements HistoricStateLoadSuccess {
  const _$HistoricStateLoadSuccess(this.information)
      : assert(information != null);

  @override
  final HistoricModel information;

  @override
  String toString() {
    return 'HistoricState.loadSuccess(information: $information)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoricStateLoadSuccess &&
            (identical(other.information, information) ||
                const DeepCollectionEquality()
                    .equals(other.information, information)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(information);

  @override
  $HistoricStateLoadSuccessCopyWith<HistoricStateLoadSuccess> get copyWith =>
      _$HistoricStateLoadSuccessCopyWithImpl<HistoricStateLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(HistoricModel information),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(information);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(HistoricModel information),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(information);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(HistoricStateStarted value),
    @required Result loadInProgress(HistoricStateLoadInProgress value),
    @required Result loadSuccess(HistoricStateLoadSuccess value),
    @required Result loadFailure(HistoricStateLoadFailure value),
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
    Result started(HistoricStateStarted value),
    Result loadInProgress(HistoricStateLoadInProgress value),
    Result loadSuccess(HistoricStateLoadSuccess value),
    Result loadFailure(HistoricStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class HistoricStateLoadSuccess implements HistoricState {
  const factory HistoricStateLoadSuccess(HistoricModel information) =
      _$HistoricStateLoadSuccess;

  HistoricModel get information;
  $HistoricStateLoadSuccessCopyWith<HistoricStateLoadSuccess> get copyWith;
}

abstract class $HistoricStateLoadFailureCopyWith<$Res> {
  factory $HistoricStateLoadFailureCopyWith(HistoricStateLoadFailure value,
          $Res Function(HistoricStateLoadFailure) then) =
      _$HistoricStateLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$HistoricStateLoadFailureCopyWithImpl<$Res>
    extends _$HistoricStateCopyWithImpl<$Res>
    implements $HistoricStateLoadFailureCopyWith<$Res> {
  _$HistoricStateLoadFailureCopyWithImpl(HistoricStateLoadFailure _value,
      $Res Function(HistoricStateLoadFailure) _then)
      : super(_value, (v) => _then(v as HistoricStateLoadFailure));

  @override
  HistoricStateLoadFailure get _value =>
      super._value as HistoricStateLoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(HistoricStateLoadFailure(
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

class _$HistoricStateLoadFailure implements HistoricStateLoadFailure {
  const _$HistoricStateLoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HistoricState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoricStateLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $HistoricStateLoadFailureCopyWith<HistoricStateLoadFailure> get copyWith =>
      _$HistoricStateLoadFailureCopyWithImpl<HistoricStateLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(HistoricModel information),
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
    Result loadSuccess(HistoricModel information),
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
    @required Result started(HistoricStateStarted value),
    @required Result loadInProgress(HistoricStateLoadInProgress value),
    @required Result loadSuccess(HistoricStateLoadSuccess value),
    @required Result loadFailure(HistoricStateLoadFailure value),
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
    Result started(HistoricStateStarted value),
    Result loadInProgress(HistoricStateLoadInProgress value),
    Result loadSuccess(HistoricStateLoadSuccess value),
    Result loadFailure(HistoricStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class HistoricStateLoadFailure implements HistoricState {
  const factory HistoricStateLoadFailure(Failure failure) =
      _$HistoricStateLoadFailure;

  Failure get failure;
  $HistoricStateLoadFailureCopyWith<HistoricStateLoadFailure> get copyWith;
}
