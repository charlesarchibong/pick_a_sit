// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_sit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookSitStateTearOff {
  const _$BookSitStateTearOff();

  _$InitialBookSitState initial() {
    return const _$InitialBookSitState();
  }

  _$LoadingBookSitState loading() {
    return const _$LoadingBookSitState();
  }

  _$ErrorBookSitState error(String message) {
    return _$ErrorBookSitState(
      message,
    );
  }

  _$LoadedBookSitState loaded(List<SeatEntity> seats) {
    return _$LoadedBookSitState(
      seats,
    );
  }

  _$BookedBookSitState booked(String sitNumber) {
    return _$BookedBookSitState(
      sitNumber,
    );
  }
}

/// @nodoc
const $BookSitState = _$BookSitStateTearOff();

/// @nodoc
mixin _$BookSitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<SeatEntity> seats) loaded,
    required TResult Function(String sitNumber) booked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialBookSitState value) initial,
    required TResult Function(_$LoadingBookSitState value) loading,
    required TResult Function(_$ErrorBookSitState value) error,
    required TResult Function(_$LoadedBookSitState value) loaded,
    required TResult Function(_$BookedBookSitState value) booked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookSitStateCopyWith<$Res> {
  factory $BookSitStateCopyWith(
          BookSitState value, $Res Function(BookSitState) then) =
      _$BookSitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookSitStateCopyWithImpl<$Res> implements $BookSitStateCopyWith<$Res> {
  _$BookSitStateCopyWithImpl(this._value, this._then);

  final BookSitState _value;
  // ignore: unused_field
  final $Res Function(BookSitState) _then;
}

/// @nodoc
abstract class _$$InitialBookSitStateCopyWith<$Res> {
  factory _$$InitialBookSitStateCopyWith(_$InitialBookSitState value,
          $Res Function(_$InitialBookSitState) then) =
      __$$InitialBookSitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialBookSitStateCopyWithImpl<$Res>
    extends _$BookSitStateCopyWithImpl<$Res>
    implements _$$InitialBookSitStateCopyWith<$Res> {
  __$$InitialBookSitStateCopyWithImpl(
      _$InitialBookSitState _value, $Res Function(_$InitialBookSitState) _then)
      : super(_value, (v) => _then(v as _$InitialBookSitState));

  @override
  _$InitialBookSitState get _value => super._value as _$InitialBookSitState;
}

/// @nodoc

class _$_$InitialBookSitState implements _$InitialBookSitState {
  const _$_$InitialBookSitState();

  @override
  String toString() {
    return 'BookSitState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialBookSitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<SeatEntity> seats) loaded,
    required TResult Function(String sitNumber) booked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialBookSitState value) initial,
    required TResult Function(_$LoadingBookSitState value) loading,
    required TResult Function(_$ErrorBookSitState value) error,
    required TResult Function(_$LoadedBookSitState value) loaded,
    required TResult Function(_$BookedBookSitState value) booked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$InitialBookSitState implements BookSitState {
  const factory _$InitialBookSitState() = _$_$InitialBookSitState;
}

/// @nodoc
abstract class _$$LoadingBookSitStateCopyWith<$Res> {
  factory _$$LoadingBookSitStateCopyWith(_$LoadingBookSitState value,
          $Res Function(_$LoadingBookSitState) then) =
      __$$LoadingBookSitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBookSitStateCopyWithImpl<$Res>
    extends _$BookSitStateCopyWithImpl<$Res>
    implements _$$LoadingBookSitStateCopyWith<$Res> {
  __$$LoadingBookSitStateCopyWithImpl(
      _$LoadingBookSitState _value, $Res Function(_$LoadingBookSitState) _then)
      : super(_value, (v) => _then(v as _$LoadingBookSitState));

  @override
  _$LoadingBookSitState get _value => super._value as _$LoadingBookSitState;
}

/// @nodoc

class _$_$LoadingBookSitState implements _$LoadingBookSitState {
  const _$_$LoadingBookSitState();

  @override
  String toString() {
    return 'BookSitState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingBookSitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<SeatEntity> seats) loaded,
    required TResult Function(String sitNumber) booked,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialBookSitState value) initial,
    required TResult Function(_$LoadingBookSitState value) loading,
    required TResult Function(_$ErrorBookSitState value) error,
    required TResult Function(_$LoadedBookSitState value) loaded,
    required TResult Function(_$BookedBookSitState value) booked,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$LoadingBookSitState implements BookSitState {
  const factory _$LoadingBookSitState() = _$_$LoadingBookSitState;
}

/// @nodoc
abstract class _$$ErrorBookSitStateCopyWith<$Res> {
  factory _$$ErrorBookSitStateCopyWith(
          _$ErrorBookSitState value, $Res Function(_$ErrorBookSitState) then) =
      __$$ErrorBookSitStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorBookSitStateCopyWithImpl<$Res>
    extends _$BookSitStateCopyWithImpl<$Res>
    implements _$$ErrorBookSitStateCopyWith<$Res> {
  __$$ErrorBookSitStateCopyWithImpl(
      _$ErrorBookSitState _value, $Res Function(_$ErrorBookSitState) _then)
      : super(_value, (v) => _then(v as _$ErrorBookSitState));

  @override
  _$ErrorBookSitState get _value => super._value as _$ErrorBookSitState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorBookSitState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ErrorBookSitState implements _$ErrorBookSitState {
  const _$_$ErrorBookSitState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BookSitState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorBookSitState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorBookSitStateCopyWith<_$ErrorBookSitState> get copyWith =>
      __$$ErrorBookSitStateCopyWithImpl<_$ErrorBookSitState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<SeatEntity> seats) loaded,
    required TResult Function(String sitNumber) booked,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialBookSitState value) initial,
    required TResult Function(_$LoadingBookSitState value) loading,
    required TResult Function(_$ErrorBookSitState value) error,
    required TResult Function(_$LoadedBookSitState value) loaded,
    required TResult Function(_$BookedBookSitState value) booked,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$ErrorBookSitState implements BookSitState {
  const factory _$ErrorBookSitState(String message) = _$_$ErrorBookSitState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorBookSitStateCopyWith<_$ErrorBookSitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedBookSitStateCopyWith<$Res> {
  factory _$$LoadedBookSitStateCopyWith(_$LoadedBookSitState value,
          $Res Function(_$LoadedBookSitState) then) =
      __$$LoadedBookSitStateCopyWithImpl<$Res>;
  $Res call({List<SeatEntity> seats});
}

/// @nodoc
class __$$LoadedBookSitStateCopyWithImpl<$Res>
    extends _$BookSitStateCopyWithImpl<$Res>
    implements _$$LoadedBookSitStateCopyWith<$Res> {
  __$$LoadedBookSitStateCopyWithImpl(
      _$LoadedBookSitState _value, $Res Function(_$LoadedBookSitState) _then)
      : super(_value, (v) => _then(v as _$LoadedBookSitState));

  @override
  _$LoadedBookSitState get _value => super._value as _$LoadedBookSitState;

  @override
  $Res call({
    Object? seats = freezed,
  }) {
    return _then(_$LoadedBookSitState(
      seats == freezed
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>,
    ));
  }
}

/// @nodoc

class _$_$LoadedBookSitState implements _$LoadedBookSitState {
  const _$_$LoadedBookSitState(this.seats);

  @override
  final List<SeatEntity> seats;

  @override
  String toString() {
    return 'BookSitState.loaded(seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedBookSitState &&
            const DeepCollectionEquality().equals(other.seats, seats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(seats));

  @JsonKey(ignore: true)
  @override
  _$$LoadedBookSitStateCopyWith<_$LoadedBookSitState> get copyWith =>
      __$$LoadedBookSitStateCopyWithImpl<_$LoadedBookSitState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<SeatEntity> seats) loaded,
    required TResult Function(String sitNumber) booked,
  }) {
    return loaded(seats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
  }) {
    return loaded?.call(seats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(seats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialBookSitState value) initial,
    required TResult Function(_$LoadingBookSitState value) loading,
    required TResult Function(_$ErrorBookSitState value) error,
    required TResult Function(_$LoadedBookSitState value) loaded,
    required TResult Function(_$BookedBookSitState value) booked,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$LoadedBookSitState implements BookSitState {
  const factory _$LoadedBookSitState(List<SeatEntity> seats) =
      _$_$LoadedBookSitState;

  List<SeatEntity> get seats;
  @JsonKey(ignore: true)
  _$$LoadedBookSitStateCopyWith<_$LoadedBookSitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookedBookSitStateCopyWith<$Res> {
  factory _$$BookedBookSitStateCopyWith(_$BookedBookSitState value,
          $Res Function(_$BookedBookSitState) then) =
      __$$BookedBookSitStateCopyWithImpl<$Res>;
  $Res call({String sitNumber});
}

/// @nodoc
class __$$BookedBookSitStateCopyWithImpl<$Res>
    extends _$BookSitStateCopyWithImpl<$Res>
    implements _$$BookedBookSitStateCopyWith<$Res> {
  __$$BookedBookSitStateCopyWithImpl(
      _$BookedBookSitState _value, $Res Function(_$BookedBookSitState) _then)
      : super(_value, (v) => _then(v as _$BookedBookSitState));

  @override
  _$BookedBookSitState get _value => super._value as _$BookedBookSitState;

  @override
  $Res call({
    Object? sitNumber = freezed,
  }) {
    return _then(_$BookedBookSitState(
      sitNumber == freezed
          ? _value.sitNumber
          : sitNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$BookedBookSitState implements _$BookedBookSitState {
  const _$_$BookedBookSitState(this.sitNumber);

  @override
  final String sitNumber;

  @override
  String toString() {
    return 'BookSitState.booked(sitNumber: $sitNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedBookSitState &&
            const DeepCollectionEquality().equals(other.sitNumber, sitNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sitNumber));

  @JsonKey(ignore: true)
  @override
  _$$BookedBookSitStateCopyWith<_$BookedBookSitState> get copyWith =>
      __$$BookedBookSitStateCopyWithImpl<_$BookedBookSitState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<SeatEntity> seats) loaded,
    required TResult Function(String sitNumber) booked,
  }) {
    return booked(sitNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
  }) {
    return booked?.call(sitNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<SeatEntity> seats)? loaded,
    TResult Function(String sitNumber)? booked,
    required TResult orElse(),
  }) {
    if (booked != null) {
      return booked(sitNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialBookSitState value) initial,
    required TResult Function(_$LoadingBookSitState value) loading,
    required TResult Function(_$ErrorBookSitState value) error,
    required TResult Function(_$LoadedBookSitState value) loaded,
    required TResult Function(_$BookedBookSitState value) booked,
  }) {
    return booked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
  }) {
    return booked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialBookSitState value)? initial,
    TResult Function(_$LoadingBookSitState value)? loading,
    TResult Function(_$ErrorBookSitState value)? error,
    TResult Function(_$LoadedBookSitState value)? loaded,
    TResult Function(_$BookedBookSitState value)? booked,
    required TResult orElse(),
  }) {
    if (booked != null) {
      return booked(this);
    }
    return orElse();
  }
}

abstract class _$BookedBookSitState implements BookSitState {
  const factory _$BookedBookSitState(String sitNumber) = _$_$BookedBookSitState;

  String get sitNumber;
  @JsonKey(ignore: true)
  _$$BookedBookSitStateCopyWith<_$BookedBookSitState> get copyWith =>
      throw _privateConstructorUsedError;
}
