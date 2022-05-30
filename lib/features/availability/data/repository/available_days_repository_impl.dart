import 'package:injectable/injectable.dart';
import 'package:qyre_test_app/core/helpers/week_generator.dart';
import 'package:qyre_test_app/features/availability/domain/entities/day.dart';
import 'package:qyre_test_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:qyre_test_app/features/availability/domain/repository/available_days_repository.dart';

@Injectable(as: AvailableDaysRepository)
class AvailableDaysRepositoryImpl implements AvailableDaysRepository {
  @override
  Future<Either<Failure, List<Day>>> getAvailableDays() async {
    final days = WeekGenerator.weekGenerator(DateTime.now()).toList();
    return Future.value(Right(days));
  }
}
