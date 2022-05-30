import 'package:injectable/injectable.dart';
import 'package:qyre_test_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:qyre_test_app/features/suggestions/domain/repository/suggestion_repository.dart';

@Injectable(as: SuggestionRepository)
class SuggestionRepositoryImpl implements SuggestionRepository {
  @override
  Future<Either<Failure, double>> getProfileCompletenes() async {
    return const Right(0.709);
  }

  @override
  Future<Either<Failure, bool>> getNetworkExtension() async {
    return const Right(true);
  }

  @override
  Future<Either<Failure, bool>> getCapabilityVerification() async {
    return const Right(true);
  }
}
