import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/production.dart';

abstract class ProductionsRepository {
  Future<Either<Failure, List<Production>>> getProdctions();
}
