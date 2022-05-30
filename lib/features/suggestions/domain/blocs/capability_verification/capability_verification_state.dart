part of 'capability_verification_bloc.dart';

@freezed
class CapabilityVerificationState with _$CapabilityVerificationState {
  const factory CapabilityVerificationState.initial() = _Initial;
  const factory CapabilityVerificationState.loading() = _Loading;
  const factory CapabilityVerificationState.canVerify(bool status) = _CanVerify;
  const factory CapabilityVerificationState.failure(String message) = _Failure;
}
