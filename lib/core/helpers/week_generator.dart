import 'package:qyre_test_app/features/availability/domain/entities/day.dart';

class WeekGenerator {
  static Iterable<Day> weekGenerator(DateTime day) sync* {
    bool? isAvailable(int index) {
      if (index == 0 || index == 4) {
        return false;
      }
      if (index == 1) {
        return true;
      }
      return null;
    }

    for (int i = 0; i < 7; i++) {
      yield Day(
        dateTime: day.add(
          Duration(days: i),
        ),
        isAvailable: isAvailable(i),
      );
    }
  }
}
