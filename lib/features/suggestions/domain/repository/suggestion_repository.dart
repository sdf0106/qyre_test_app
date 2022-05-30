import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class SuggestionRepository {
  Future<Either<Failure, double>> getProfileCompletenes();

  Future<Either<Failure, bool>> getNetworkExtension();

  Future<Either<Failure, bool>> getCapabilityVerification();
}
