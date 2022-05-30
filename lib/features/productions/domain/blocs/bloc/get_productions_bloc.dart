import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../entities/production.dart';
import '../../repository/productions_repository.dart';

part 'get_productions_event.dart';
part 'get_productions_state.dart';
part 'get_productions_bloc.freezed.dart';

@injectable
class GetProductionsBloc
    extends Bloc<GetProductionsEvent, GetProductionsState> {
  final ProductionsRepository repository;
  GetProductionsBloc(
    this.repository,
  ) : super(const _Initial()) {
    on<GetProductionsEvent>(_getProductions);
  }

  void _getProductions(
    GetProductionsEvent event,
    Emitter<GetProductionsState> emit,
  ) async {
    emit(const _Loading());
    final result = await repository.getProdctions();
    result.fold(
      (l) => emit(
        _Failure(l.errorMessage),
      ),
      (r) => emit(
        _ProductsGotten(r),
      ),
    );
  }
}
