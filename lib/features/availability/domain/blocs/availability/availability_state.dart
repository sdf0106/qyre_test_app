part of 'availability_bloc.dart';

@freezed
class AvailabilityState with _$AvailabilityState {
  const factory AvailabilityState.initial() = _Initial;
  const factory AvailabilityState.loading() = _Loading;
  const factory AvailabilityState.availabilityGotten(List<Day> days) =
      _AvailabilityGotten;
  const factory AvailabilityState.failure(String message) = _Failure;
}
