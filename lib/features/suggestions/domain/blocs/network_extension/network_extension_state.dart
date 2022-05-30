part of 'network_extension_bloc.dart';

@freezed
class NetworkExtensionState with _$NetworkExtensionState {
  const factory NetworkExtensionState.initial() = _Initial;
  const factory NetworkExtensionState.loading() = _Loading;
  const factory NetworkExtensionState.canExtendNetwork(bool status) =
      _CanExtendsNetwork;
  const factory NetworkExtensionState.failure(String message) = _Failure;
}
