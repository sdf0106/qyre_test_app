import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/helpers/week_generator.dart';
import '../../domain/entities/day.dart';
import '../../domain/repository/available_days_repository.dart';

@Injectable(as: AvailableDaysRepository)
class AvailableDaysRepositoryImpl implements AvailableDaysRepository {
  @override
  Future<Either<Failure, List<Day>>> getAvailableDays() async {
    final days = WeekGenerator.weekGenerator(DateTime.now()).toList();
    return Future.value(Right(days));
  }
}
