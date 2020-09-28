// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CountryStateTearOff {
  const _$CountryStateTearOff();

// ignore: unused_element
  CountryStarted started() {
    return const CountryStarted();
  }

// ignore: unused_element
  CountryLoadInProgress loadInProgress() {
    return const CountryLoadInProgress();
  }

// ignore: unused_element
  CountryLoadSucces loadSuccess(
      {@required List<CountryModel> countries,
      @required Option<CountryModel> selectedCountry}) {
    return CountryLoadSucces(
      countries: countries,
      selectedCountry: selectedCountry,
    );
  }

// ignore: unused_element
  CountryLoadFailure loadFailure(Failure failure) {
    return CountryLoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $CountryState = _$CountryStateTearOff();

mixin _$CountryState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            List<CountryModel> countries, Option<CountryModel> selectedCountry),
    @required Result loadFailure(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(
        List<CountryModel> countries, Option<CountryModel> selectedCountry),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(CountryStarted value),
    @required Result loadInProgress(CountryLoadInProgress value),
    @required Result loadSuccess(CountryLoadSucces value),
    @required Result loadFailure(CountryLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(CountryStarted value),
    Result loadInProgress(CountryLoadInProgress value),
    Result loadSuccess(CountryLoadSucces value),
    Result loadFailure(CountryLoadFailure value),
    @required Result orElse(),
  });
}

abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res>;
}

class _$CountryStateCopyWithImpl<$Res> implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  final CountryState _value;
  // ignore: unused_field
  final $Res Function(CountryState) _then;
}

abstract class $CountryStartedCopyWith<$Res> {
  factory $CountryStartedCopyWith(
          CountryStarted value, $Res Function(CountryStarted) then) =
      _$CountryStartedCopyWithImpl<$Res>;
}

class _$CountryStartedCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements $CountryStartedCopyWith<$Res> {
  _$CountryStartedCopyWithImpl(
      CountryStarted _value, $Res Function(CountryStarted) _then)
      : super(_value, (v) => _then(v as CountryStarted));

  @override
  CountryStarted get _value => super._value as CountryStarted;
}

class _$CountryStarted implements CountryStarted {
  const _$CountryStarted();

  @override
  String toString() {
    return 'CountryState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CountryStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            List<CountryModel> countries, Option<CountryModel> selectedCountry),
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
    Result loadSuccess(
        List<CountryModel> countries, Option<CountryModel> selectedCountry),
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
    @required Result started(CountryStarted value),
    @required Result loadInProgress(CountryLoadInProgress value),
    @required Result loadSuccess(CountryLoadSucces value),
    @required Result loadFailure(CountryLoadFailure value),
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
    Result started(CountryStarted value),
    Result loadInProgress(CountryLoadInProgress value),
    Result loadSuccess(CountryLoadSucces value),
    Result loadFailure(CountryLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class CountryStarted implements CountryState {
  const factory CountryStarted() = _$CountryStarted;
}

abstract class $CountryLoadInProgressCopyWith<$Res> {
  factory $CountryLoadInProgressCopyWith(CountryLoadInProgress value,
          $Res Function(CountryLoadInProgress) then) =
      _$CountryLoadInProgressCopyWithImpl<$Res>;
}

class _$CountryLoadInProgressCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements $CountryLoadInProgressCopyWith<$Res> {
  _$CountryLoadInProgressCopyWithImpl(
      CountryLoadInProgress _value, $Res Function(CountryLoadInProgress) _then)
      : super(_value, (v) => _then(v as CountryLoadInProgress));

  @override
  CountryLoadInProgress get _value => super._value as CountryLoadInProgress;
}

class _$CountryLoadInProgress implements CountryLoadInProgress {
  const _$CountryLoadInProgress();

  @override
  String toString() {
    return 'CountryState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CountryLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            List<CountryModel> countries, Option<CountryModel> selectedCountry),
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
    Result loadSuccess(
        List<CountryModel> countries, Option<CountryModel> selectedCountry),
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
    @required Result started(CountryStarted value),
    @required Result loadInProgress(CountryLoadInProgress value),
    @required Result loadSuccess(CountryLoadSucces value),
    @required Result loadFailure(CountryLoadFailure value),
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
    Result started(CountryStarted value),
    Result loadInProgress(CountryLoadInProgress value),
    Result loadSuccess(CountryLoadSucces value),
    Result loadFailure(CountryLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class CountryLoadInProgress implements CountryState {
  const factory CountryLoadInProgress() = _$CountryLoadInProgress;
}

abstract class $CountryLoadSuccesCopyWith<$Res> {
  factory $CountryLoadSuccesCopyWith(
          CountryLoadSucces value, $Res Function(CountryLoadSucces) then) =
      _$CountryLoadSuccesCopyWithImpl<$Res>;
  $Res call(
      {List<CountryModel> countries, Option<CountryModel> selectedCountry});
}

class _$CountryLoadSuccesCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements $CountryLoadSuccesCopyWith<$Res> {
  _$CountryLoadSuccesCopyWithImpl(
      CountryLoadSucces _value, $Res Function(CountryLoadSucces) _then)
      : super(_value, (v) => _then(v as CountryLoadSucces));

  @override
  CountryLoadSucces get _value => super._value as CountryLoadSucces;

  @override
  $Res call({
    Object countries = freezed,
    Object selectedCountry = freezed,
  }) {
    return _then(CountryLoadSucces(
      countries: countries == freezed
          ? _value.countries
          : countries as List<CountryModel>,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry as Option<CountryModel>,
    ));
  }
}

class _$CountryLoadSucces implements CountryLoadSucces {
  const _$CountryLoadSucces(
      {@required this.countries, @required this.selectedCountry})
      : assert(countries != null),
        assert(selectedCountry != null);

  @override
  final List<CountryModel> countries;
  @override
  final Option<CountryModel> selectedCountry;

  @override
  String toString() {
    return 'CountryState.loadSuccess(countries: $countries, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountryLoadSucces &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)) &&
            (identical(other.selectedCountry, selectedCountry) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCountry, selectedCountry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countries) ^
      const DeepCollectionEquality().hash(selectedCountry);

  @override
  $CountryLoadSuccesCopyWith<CountryLoadSucces> get copyWith =>
      _$CountryLoadSuccesCopyWithImpl<CountryLoadSucces>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            List<CountryModel> countries, Option<CountryModel> selectedCountry),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(countries, selectedCountry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(
        List<CountryModel> countries, Option<CountryModel> selectedCountry),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(countries, selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(CountryStarted value),
    @required Result loadInProgress(CountryLoadInProgress value),
    @required Result loadSuccess(CountryLoadSucces value),
    @required Result loadFailure(CountryLoadFailure value),
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
    Result started(CountryStarted value),
    Result loadInProgress(CountryLoadInProgress value),
    Result loadSuccess(CountryLoadSucces value),
    Result loadFailure(CountryLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CountryLoadSucces implements CountryState {
  const factory CountryLoadSucces(
      {@required List<CountryModel> countries,
      @required Option<CountryModel> selectedCountry}) = _$CountryLoadSucces;

  List<CountryModel> get countries;
  Option<CountryModel> get selectedCountry;
  $CountryLoadSuccesCopyWith<CountryLoadSucces> get copyWith;
}

abstract class $CountryLoadFailureCopyWith<$Res> {
  factory $CountryLoadFailureCopyWith(
          CountryLoadFailure value, $Res Function(CountryLoadFailure) then) =
      _$CountryLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$CountryLoadFailureCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements $CountryLoadFailureCopyWith<$Res> {
  _$CountryLoadFailureCopyWithImpl(
      CountryLoadFailure _value, $Res Function(CountryLoadFailure) _then)
      : super(_value, (v) => _then(v as CountryLoadFailure));

  @override
  CountryLoadFailure get _value => super._value as CountryLoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(CountryLoadFailure(
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

class _$CountryLoadFailure implements CountryLoadFailure {
  const _$CountryLoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CountryState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountryLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $CountryLoadFailureCopyWith<CountryLoadFailure> get copyWith =>
      _$CountryLoadFailureCopyWithImpl<CountryLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            List<CountryModel> countries, Option<CountryModel> selectedCountry),
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
    Result loadSuccess(
        List<CountryModel> countries, Option<CountryModel> selectedCountry),
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
    @required Result started(CountryStarted value),
    @required Result loadInProgress(CountryLoadInProgress value),
    @required Result loadSuccess(CountryLoadSucces value),
    @required Result loadFailure(CountryLoadFailure value),
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
    Result started(CountryStarted value),
    Result loadInProgress(CountryLoadInProgress value),
    Result loadSuccess(CountryLoadSucces value),
    Result loadFailure(CountryLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class CountryLoadFailure implements CountryState {
  const factory CountryLoadFailure(Failure failure) = _$CountryLoadFailure;

  Failure get failure;
  $CountryLoadFailureCopyWith<CountryLoadFailure> get copyWith;
}
