import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../repository/suggestion_repository.dart';

part 'network_extension_event.dart';
part 'network_extension_state.dart';
part 'network_extension_bloc.freezed.dart';

@injectable
class NetworkExtensionBloc
    extends Bloc<NetworkExtensionEvent, NetworkExtensionState> {
  final SuggestionRepository repository;
  NetworkExtensionBloc(this.repository) : super(const _Initial()) {
    on<NetworkExtensionEvent>(_getNetworkExtension);
  }

  void _getNetworkExtension(
      NetworkExtensionEvent event, Emitter<NetworkExtensionState> emit) async {
    emit(const _Loading());
    final result = await repository.getNetworkExtension();
    result.fold(
      (l) => emit(_Failure(l.errorMessage)),
      (r) => emit(_CanExtendsNetwork(r)),
    );
  }
}
