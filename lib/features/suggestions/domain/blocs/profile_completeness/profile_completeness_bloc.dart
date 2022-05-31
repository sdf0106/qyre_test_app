import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../repository/suggestion_repository.dart';

part 'profile_completeness_event.dart';
part 'profile_completeness_state.dart';
part 'profile_completeness_bloc.freezed.dart';

@injectable
class ProfileCompletenessBloc
    extends Bloc<ProfileCompletenessEvent, ProfileCompletenessState> {
  final SuggestionRepository repository;
  ProfileCompletenessBloc(this.repository) : super(const _Initial()) {
    on<ProfileCompletenessEvent>(_getProfileComleteness);
  }

  Future<void> _getProfileComleteness(ProfileCompletenessEvent event,
      Emitter<ProfileCompletenessState> emit) async {
    emit(const _Loading());
    final result = await repository.getProfileCompletenes();
    result.fold(
      (l) => emit(_Failure(l.errorMessage)),
      (r) => emit(
        _ProfileCompletenessGotten(r),
      ),
    );
  }
}
