import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../repository/suggestion_repository.dart';

part 'capability_verification_event.dart';
part 'capability_verification_state.dart';
part 'capability_verification_bloc.freezed.dart';

@injectable
class CapabilityVerificationBloc
    extends Bloc<CapabilityVerificationEvent, CapabilityVerificationState> {
  final SuggestionRepository repository;
  CapabilityVerificationBloc(this.repository) : super(const _Initial()) {
    on<CapabilityVerificationEvent>(_getVerification);
  }

  void _getVerification(
    CapabilityVerificationEvent event,
    Emitter<CapabilityVerificationState> emit,
  ) async {
    emit(const _Loading());
    final result = await repository.getCapabilityVerification();
    result.fold(
      (l) => emit(_Failure(l.errorMessage)),
      (r) => emit(_CanVerify(r)),
    );
  }
}
