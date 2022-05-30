part of 'profile_completeness_bloc.dart';

@freezed
class ProfileCompletenessState with _$ProfileCompletenessState {
  const factory ProfileCompletenessState.initial() = _Initial;
  const factory ProfileCompletenessState.loading() = _Loading;
  const factory ProfileCompletenessState.profileCompletenessGotten(
    double percentOfCompleteness,
  ) = _ProfileCompletenessGotten;
  const factory ProfileCompletenessState.failure(String message) = _Failure;
}
