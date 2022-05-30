import 'package:injectable/injectable.dart';
import 'package:qyre_test_app/core/helpers/production_generator.dart';
import 'package:qyre_test_app/features/productions/domain/entities/production.dart';
import 'package:qyre_test_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:qyre_test_app/features/productions/domain/repository/productions_repository.dart';

@Injectable(as: ProductionsRepository)
class ProductionsRepositoryImpl implements ProductionsRepository {
  @override
  Future<Either<Failure, List<Production>>> getProdctions() async {
    final productions = ProductionGenerator.productionGenerator().toList();
    return Right(productions);
  }
}
