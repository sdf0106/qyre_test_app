// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/availability/data/repository/available_days_repository_impl.dart'
    as _i4;
import 'features/availability/domain/blocs/availability/availability_bloc.dart'
    as _i9;
import 'features/availability/domain/repository/available_days_repository.dart'
    as _i3;
import 'features/productions/data/repository/productions_repository_impl.dart'
    as _i6;
import 'features/productions/domain/blocs/bloc/get_productions_bloc.dart'
    as _i11;
import 'features/productions/domain/repository/productions_repository.dart'
    as _i5;
import 'features/suggestions/data/repository/suggestion_repository_impl.dart'
    as _i8;
import 'features/suggestions/domain/blocs/capability_verification/capability_verification_bloc.dart'
    as _i10;
import 'features/suggestions/domain/blocs/network_extension/network_extension_bloc.dart'
    as _i12;
import 'features/suggestions/domain/blocs/profile_completeness/profile_completeness_bloc.dart'
    as _i13;
import 'features/suggestions/domain/repository/suggestion_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AvailableDaysRepository>(
      () => _i4.AvailableDaysRepositoryImpl());
  gh.factory<_i5.ProductionsRepository>(() => _i6.ProductionsRepositoryImpl());
  gh.factory<_i7.SuggestionRepository>(() => _i8.SuggestionRepositoryImpl());
  gh.factory<_i9.AvailabilityBloc>(
      () => _i9.AvailabilityBloc(get<_i3.AvailableDaysRepository>()));
  gh.factory<_i10.CapabilityVerificationBloc>(
      () => _i10.CapabilityVerificationBloc(get<_i7.SuggestionRepository>()));
  gh.factory<_i11.GetProductionsBloc>(
      () => _i11.GetProductionsBloc(get<_i5.ProductionsRepository>()));
  gh.factory<_i12.NetworkExtensionBloc>(
      () => _i12.NetworkExtensionBloc(get<_i7.SuggestionRepository>()));
  gh.factory<_i13.ProfileCompletenessBloc>(
      () => _i13.ProfileCompletenessBloc(get<_i7.SuggestionRepository>()));
  return get;
}
