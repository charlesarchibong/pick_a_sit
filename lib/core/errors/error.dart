import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

/// [PickASitException] is thrown when there is a server error.
@freezed
class PickASitException with _$PickASitException implements Exception {
  /// [PickASitException.server] is thrown when there is a server error.
  const factory PickASitException.server(String message) =
      _$PickASitServerException;

  /// [PickASitException.noInternet] is thrown when there
  /// is no internet connection.
  const factory PickASitException.noInternet() = _$PickASitNoInternetException;

  /// [PickASitException.unknown] is thrown when there is an unknown error.
  const factory PickASitException.unknown() = _$PickASitUnknownException;
}
