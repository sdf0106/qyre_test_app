import 'package:dartz/dartz.dart';
import 'package:qyre_test_app/core/errors/failures.dart';
import 'package:qyre_test_app/features/productions/domain/entities/production.dart';

abstract class ProductionsRepository {
  Future<Either<Failure, List<Production>>> getProdctions();
}
