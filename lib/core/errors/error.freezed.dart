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
class _$PickASitExceptionTearOff {
  const _$PickASitExceptionTearOff();

  _$PickASitServerException server(String message) {
    return _$PickASitServerException(
      message,
    );
  }

  _$PickASitNoInternetException noInternet() {
    return const _$PickASitNoInternetException();
  }

  _$PickASitUnknownException unknown() {
    return const _$PickASitUnknownException();
  }
}

/// @nodoc
const $PickASitException = _$PickASitExceptionTearOff();

/// @nodoc
mixin _$PickASitException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PickASitServerException value) server,
    required TResult Function(_$PickASitNoInternetException value) noInternet,
    required TResult Function(_$PickASitUnknownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$PickASitServerException value)? server,
    TResult Function(_$PickASitNoInternetException value)? noInternet,
    TResult Function(_$PickASitUnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PickASitServerException value)? server,
    TResult Function(_$PickASitNoInternetException value)? noInternet,
    TResult Function(_$PickASitUnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickASitExceptionCopyWith<$Res> {
  factory $PickASitExceptionCopyWith(
          PickASitException value, $Res Function(PickASitException) then) =
      _$PickASitExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickASitExceptionCopyWithImpl<$Res>
    implements $PickASitExceptionCopyWith<$Res> {
  _$PickASitExceptionCopyWithImpl(this._value, this._then);

  final PickASitException _value;
  // ignore: unused_field
  final $Res Function(PickASitException) _then;
}

/// @nodoc
abstract class _$$PickASitServerExceptionCopyWith<$Res> {
  factory _$$PickASitServerExceptionCopyWith(_$PickASitServerException value,
          $Res Function(_$PickASitServerException) then) =
      __$$PickASitServerExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$PickASitServerExceptionCopyWithImpl<$Res>
    extends _$PickASitExceptionCopyWithImpl<$Res>
    implements _$$PickASitServerExceptionCopyWith<$Res> {
  __$$PickASitServerExceptionCopyWithImpl(_$PickASitServerException _value,
      $Res Function(_$PickASitServerException) _then)
      : super(_value, (v) => _then(v as _$PickASitServerException));

  @override
  _$PickASitServerException get _value =>
      super._value as _$PickASitServerException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PickASitServerException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$PickASitServerException implements _$PickASitServerException {
  const _$_$PickASitServerException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PickASitException.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickASitServerException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PickASitServerExceptionCopyWith<_$PickASitServerException> get copyWith =>
      __$$PickASitServerExceptionCopyWithImpl<_$PickASitServerException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PickASitServerException value) server,
    required TResult Function(_$PickASitNoInternetException value) noInternet,
    required TResult Function(_$PickASitUnknownException value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$PickASitServerException value)? server,
    TResult Function(_$PickASitNoInternetException value)? noInternet,
    TResult Function(_$PickASitUnknownException value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PickASitServerException value)? server,
    TResult Function(_$PickASitNoInternetException value)? noInternet,
    TResult Function(_$PickASitUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$PickASitServerException implements PickASitException {
  const factory _$PickASitServerException(String message) =
      _$_$PickASitServerException;

  String get message;
  @JsonKey(ignore: true)
  _$$PickASitServerExceptionCopyWith<_$PickASitServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickASitNoInternetExceptionCopyWith<$Res> {
  factory _$$PickASitNoInternetExceptionCopyWith(
          _$PickASitNoInternetException value,
          $Res Function(_$PickASitNoInternetException) then) =
      __$$PickASitNoInternetExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickASitNoInternetExceptionCopyWithImpl<$Res>
    extends _$PickASitExceptionCopyWithImpl<$Res>
    implements _$$PickASitNoInternetExceptionCopyWith<$Res> {
  __$$PickASitNoInternetExceptionCopyWithImpl(
      _$PickASitNoInternetException _value,
      $Res Function(_$PickASitNoInternetException) _then)
      : super(_value, (v) => _then(v as _$PickASitNoInternetException));

  @override
  _$PickASitNoInternetException get _value =>
      super._value as _$PickASitNoInternetException;
}

/// @nodoc

class _$_$PickASitNoInternetException implements _$PickASitNoInternetException {
  const _$_$PickASitNoInternetException();

  @override
  String toString() {
    return 'PickASitException.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickASitNoInternetException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PickASitServerException value) server,
    required TResult Function(_$PickASitNoInternetException value) noInternet,
    required TResult Function(_$PickASitUnknownException value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$PickASitServerException value)? server,
    TResult Function(_$PickASitNoInternetException value)? noInternet,
    TResult Function(_$PickASitUnknownException value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PickASitServerException value)? server,
    TResult Function(_$PickASitNoInternetException value)? noInternet,
    TResult Function(_$PickASitUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$PickASitNoInternetException implements PickASitException {
  const factory _$PickASitNoInternetException() =
      _$_$PickASitNoInternetException;
}

/// @nodoc
abstract class _$$PickASitUnknownExceptionCopyWith<$Res> {
  factory _$$PickASitUnknownExceptionCopyWith(_$PickASitUnknownException value,
          $Res Function(_$PickASitUnknownException) then) =
      __$$PickASitUnknownExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickASitUnknownExceptionCopyWithImpl<$Res>
    extends _$PickASitExceptionCopyWithImpl<$Res>
    implements _$$PickASitUnknownExceptionCopyWith<$Res> {
  __$$PickASitUnknownExceptionCopyWithImpl(_$PickASitUnknownException _value,
      $Res Function(_$PickASitUnknownException) _then)
      : super(_value, (v) => _then(v as _$PickASitUnknownException));

  @override
  _$PickASitUnknownException get _value =>
      super._value as _$PickASitUnknownException;
}

/// @nodoc

class _$_$PickASitUnknownException implements _$PickASitUnknownException {
  const _$_$PickASitUnknownException();

  @override
  String toString() {
    return 'PickASitException.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickASitUnknownException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PickASitServerException value) server,
    required TResult Function(_$PickASitNoInternetException value) noInternet,
    required TResult Function(_$PickASitUnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$PickASitServerException value)? server,
    TResult Function(_$PickASitNoInternetException value)? noInternet,
    TResult Function(_$PickASitUnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PickASitServerException value)? server,
    TResult Function(_$PickASitNoInternetException value)? noInternet,
    TResult Function(_$PickASitUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$PickASitUnknownException implements PickASitException {
  const factory _$PickASitUnknownException() = _$_$PickASitUnknownException;
}
