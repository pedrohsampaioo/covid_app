// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  ApiFailure apiFailure(DioError error) {
    return ApiFailure(
      error,
    );
  }
}

// ignore: unused_element
const $Failure = _$FailureTearOff();

mixin _$Failure {
  DioError get error;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result apiFailure(DioError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result apiFailure(DioError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result apiFailure(ApiFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result apiFailure(ApiFailure value),
    @required Result orElse(),
  });

  $FailureCopyWith<Failure> get copyWith;
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({DioError error});
}

class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed ? _value.error : error as DioError,
    ));
  }
}

abstract class $ApiFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
  @override
  $Res call({DioError error});
}

class _$ApiFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(ApiFailure _value, $Res Function(ApiFailure) _then)
      : super(_value, (v) => _then(v as ApiFailure));

  @override
  ApiFailure get _value => super._value as ApiFailure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ApiFailure(
      error == freezed ? _value.error : error as DioError,
    ));
  }
}

class _$ApiFailure implements ApiFailure {
  const _$ApiFailure(this.error) : assert(error != null);

  @override
  final DioError error;

  @override
  String toString() {
    return 'Failure.apiFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ApiFailureCopyWith<ApiFailure> get copyWith =>
      _$ApiFailureCopyWithImpl<ApiFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result apiFailure(DioError error),
  }) {
    assert(apiFailure != null);
    return apiFailure(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result apiFailure(DioError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (apiFailure != null) {
      return apiFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result apiFailure(ApiFailure value),
  }) {
    assert(apiFailure != null);
    return apiFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result apiFailure(ApiFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (apiFailure != null) {
      return apiFailure(this);
    }
    return orElse();
  }
}

abstract class ApiFailure implements Failure {
  const factory ApiFailure(DioError error) = _$ApiFailure;

  @override
  DioError get error;
  @override
  $ApiFailureCopyWith<ApiFailure> get copyWith;
}
