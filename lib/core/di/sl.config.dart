// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;

import '../../features/pick_seat/data/datasources/pick_seat_remote_data_source.dart'
    as _i5;
import '../../features/pick_seat/data/repositories/pick_seat_repository_impl.dart'
    as _i7;
import '../../features/pick_seat/domain/repositories/pick_seat_repository.dart'
    as _i6;
import '../../features/pick_seat/domain/usecases/book_usecase.dart' as _i8;
import '../../features/pick_seat/domain/usecases/get_bus_lines_usecase.dart'
    as _i9;
import '../../features/pick_seat/domain/usecases/get_seats_usecase.dart'
    as _i10;
import '../../features/pick_seat/presentation/cubit/book_sit_cubit.dart'
    as _i12;
import '../../features/pick_seat/presentation/cubit/pick_sit_cubit.dart'
    as _i11;
import '../network/network_info.dart' as _i4;
import 'register_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i4.NetworkInfo>(
      () => _i4.NetworkInfoImpl(get<_i3.InternetConnectionChecker>()));
  gh.lazySingleton<_i5.PickSeatRemoteDataSource>(
      () => _i5.PickSeatRemoteDataSourceImpl(get<_i4.NetworkInfo>()));
  gh.lazySingleton<_i6.PickSeatRepository>(
      () => _i7.PickSeatRepositoryImpl(get<_i5.PickSeatRemoteDataSource>()));
  gh.lazySingleton<_i8.BookUsecase>(
      () => _i8.BookUsecase(get<_i6.PickSeatRepository>()));
  gh.lazySingleton<_i9.GetBusLinesUsecase>(
      () => _i9.GetBusLinesUsecase(get<_i6.PickSeatRepository>()));
  gh.lazySingleton<_i10.GetSeatsUsecase>(
      () => _i10.GetSeatsUsecase(get<_i6.PickSeatRepository>()));
  gh.lazySingleton<_i11.PickSitCubit>(
      () => _i11.PickSitCubit(get<_i9.GetBusLinesUsecase>()));
  gh.lazySingleton<_i12.BookSitCubit>(() => _i12.BookSitCubit(
      getSeatsUsecase: get<_i10.GetSeatsUsecase>(),
      bookUsecase: get<_i8.BookUsecase>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
