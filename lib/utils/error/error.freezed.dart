// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DefaultErrorTearOff {
  const _$DefaultErrorTearOff();

  _UnknownError unknownError(String message, StackTrace stackTrace) {
    return _UnknownError(
      message,
      stackTrace,
    );
  }

  _ApiError apiError(
      dynamic error, StackTrace stackTrace, int code, String message) {
    return _ApiError(
      error,
      stackTrace,
      code,
      message,
    );
  }

  _BusinessError businessError(int code, dynamic error, StackTrace stackTrace) {
    return _BusinessError(
      code,
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $DefaultError = _$DefaultErrorTearOff();

/// @nodoc
mixin _$DefaultError {
  StackTrace get stackTrace => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace stackTrace)
        unknownError,
    required TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)
        apiError,
    required TResult Function(int code, dynamic error, StackTrace stackTrace)
        businessError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, StackTrace stackTrace)? unknownError,
    TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)?
        apiError,
    TResult Function(int code, dynamic error, StackTrace stackTrace)?
        businessError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace stackTrace)? unknownError,
    TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)?
        apiError,
    TResult Function(int code, dynamic error, StackTrace stackTrace)?
        businessError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) then) =
      _$DefaultErrorCopyWithImpl<$Res>;
  $Res call({StackTrace stackTrace});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res> implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._value, this._then);

  final DefaultError _value;
  // ignore: unused_field
  final $Res Function(DefaultError) _then;

  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc
abstract class _$UnknownErrorCopyWith<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(
          _UnknownError value, $Res Function(_UnknownError) then) =
      __$UnknownErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message, StackTrace stackTrace});
}

/// @nodoc
class __$UnknownErrorCopyWithImpl<$Res> extends _$DefaultErrorCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(
      _UnknownError _value, $Res Function(_UnknownError) _then)
      : super(_value, (v) => _then(v as _UnknownError));

  @override
  _UnknownError get _value => super._value as _UnknownError;

  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_UnknownError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError(this.message, this.stackTrace);

  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DefaultError.unknownError(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnknownError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      __$UnknownErrorCopyWithImpl<_UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace stackTrace)
        unknownError,
    required TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)
        apiError,
    required TResult Function(int code, dynamic error, StackTrace stackTrace)
        businessError,
  }) {
    return unknownError(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, StackTrace stackTrace)? unknownError,
    TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)?
        apiError,
    TResult Function(int code, dynamic error, StackTrace stackTrace)?
        businessError,
  }) {
    return unknownError?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace stackTrace)? unknownError,
    TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)?
        apiError,
    TResult Function(int code, dynamic error, StackTrace stackTrace)?
        businessError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements DefaultError {
  const factory _UnknownError(String message, StackTrace stackTrace) =
      _$_UnknownError;

  String get message;
  @override
  StackTrace get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApiErrorCopyWith<$Res> implements $DefaultErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) then) =
      __$ApiErrorCopyWithImpl<$Res>;
  @override
  $Res call({dynamic error, StackTrace stackTrace, int code, String message});
}

/// @nodoc
class __$ApiErrorCopyWithImpl<$Res> extends _$DefaultErrorCopyWithImpl<$Res>
    implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(_ApiError _value, $Res Function(_ApiError) _then)
      : super(_value, (v) => _then(v as _ApiError));

  @override
  _ApiError get _value => super._value as _ApiError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_ApiError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApiError implements _ApiError {
  const _$_ApiError(this.error, this.stackTrace, this.code, this.message);

  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;
  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'DefaultError.apiError(error: $error, stackTrace: $stackTrace, code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      __$ApiErrorCopyWithImpl<_ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace stackTrace)
        unknownError,
    required TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)
        apiError,
    required TResult Function(int code, dynamic error, StackTrace stackTrace)
        businessError,
  }) {
    return apiError(error, stackTrace, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, StackTrace stackTrace)? unknownError,
    TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)?
        apiError,
    TResult Function(int code, dynamic error, StackTrace stackTrace)?
        businessError,
  }) {
    return apiError?.call(error, stackTrace, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace stackTrace)? unknownError,
    TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)?
        apiError,
    TResult Function(int code, dynamic error, StackTrace stackTrace)?
        businessError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(error, stackTrace, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class _ApiError implements DefaultError {
  const factory _ApiError(
          dynamic error, StackTrace stackTrace, int code, String message) =
      _$_ApiError;

  dynamic get error;
  @override
  StackTrace get stackTrace;
  int get code;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BusinessErrorCopyWith<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  factory _$BusinessErrorCopyWith(
          _BusinessError value, $Res Function(_BusinessError) then) =
      __$BusinessErrorCopyWithImpl<$Res>;
  @override
  $Res call({int code, dynamic error, StackTrace stackTrace});
}

/// @nodoc
class __$BusinessErrorCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res>
    implements _$BusinessErrorCopyWith<$Res> {
  __$BusinessErrorCopyWithImpl(
      _BusinessError _value, $Res Function(_BusinessError) _then)
      : super(_value, (v) => _then(v as _BusinessError));

  @override
  _BusinessError get _value => super._value as _BusinessError;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_BusinessError(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_BusinessError implements _BusinessError {
  const _$_BusinessError(this.code, this.error, this.stackTrace);

  @override
  final int code;
  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DefaultError.businessError(code: $code, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BusinessError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$BusinessErrorCopyWith<_BusinessError> get copyWith =>
      __$BusinessErrorCopyWithImpl<_BusinessError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace stackTrace)
        unknownError,
    required TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)
        apiError,
    required TResult Function(int code, dynamic error, StackTrace stackTrace)
        businessError,
  }) {
    return businessError(code, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, StackTrace stackTrace)? unknownError,
    TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)?
        apiError,
    TResult Function(int code, dynamic error, StackTrace stackTrace)?
        businessError,
  }) {
    return businessError?.call(code, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace stackTrace)? unknownError,
    TResult Function(
            dynamic error, StackTrace stackTrace, int code, String message)?
        apiError,
    TResult Function(int code, dynamic error, StackTrace stackTrace)?
        businessError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(code, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
  }) {
    return businessError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
  }) {
    return businessError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(this);
    }
    return orElse();
  }
}

abstract class _BusinessError implements DefaultError {
  const factory _BusinessError(int code, dynamic error, StackTrace stackTrace) =
      _$_BusinessError;

  int get code;
  dynamic get error;
  @override
  StackTrace get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$BusinessErrorCopyWith<_BusinessError> get copyWith =>
      throw _privateConstructorUsedError;
}
