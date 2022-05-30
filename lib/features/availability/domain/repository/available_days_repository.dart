import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../entities/day.dart';

@Injectable()
abstract class AvailableDaysRepository {
  Future<Either<Failure, List<Day>>> getAvailableDays();
}
