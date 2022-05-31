import 'package:injectable/injectable.dart';
import '../../../../core/helpers/production_generator.dart';
import '../../domain/entities/production.dart';
import '../../../../core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repository/productions_repository.dart';

@Injectable(as: ProductionsRepository)
class ProductionsRepositoryImpl implements ProductionsRepository {
  @override
  Future<Either<Failure, List<Production>>> getProdctions() async {
    final productions = ProductionGenerator.productionGenerator().toList();
    return Right(productions);
  }
}
