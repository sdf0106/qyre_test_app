import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../entities/day.dart';
import '../../repository/available_days_repository.dart';

part 'availability_event.dart';
part 'availability_state.dart';
part 'availability_bloc.freezed.dart';

@injectable
class AvailabilityBloc extends Bloc<AvailabilityEvent, AvailabilityState> {
  final AvailableDaysRepository repository;

  AvailabilityBloc(this.repository) : super(const _Initial()) {
    on<AvailabilityEvent>(_fetchInfo);
  }

  void _fetchInfo(
      AvailabilityEvent event, Emitter<AvailabilityState> emit) async {
    emit(const _Loading());
    final result = await repository.getAvailableDays();
    result.fold(
      (l) => emit(_Failure(l.errorMessage)),
      (r) => emit(_AvailabilityGotten(r)),
    );
  }
}
