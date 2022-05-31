import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/day.dart';

abstract class AvailableDaysRepository {
  Future<Either<Failure, List<Day>>> getAvailableDays();
}
