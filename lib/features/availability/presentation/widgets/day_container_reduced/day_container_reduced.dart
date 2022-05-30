import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore_for_file: must_be_immutable
import '../../../../../config/theme/palette.dart';
import '../dot_indicator/dot_indicator.dart';

class DayContainerReduced extends StatelessWidget {
  final DateTime dateTime;
  bool? isAvailable;

  DayContainerReduced({
    Key? key,
    required this.dateTime,
    this.isAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _WeekDay(day: dateTime),
            _Date(
              date: dateTime,
              isAvailable: isAvailable,
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------
class _WeekDay extends StatelessWidget {
  final DateTime day;
  const _WeekDay({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now().day;
    return Row(
      children: [
        if (day.day == today) ...[
          Text(
            'Today',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Palette.gray100,
                ),
          ),
          const SizedBox(width: 2.0),
        ],
        Text(
          DateFormat.E().format(day).toString().substring(0, 3),
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}

//---------------------------------------------------
class _Date extends StatelessWidget {
  DateTime date;
  bool? isAvailable;
  _Date({
    Key? key,
    required this.date,
    this.isAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isAvailable != null) ...[
          DotIndicator(
            isAvailable: isAvailable!,
          ),
          const SizedBox(width: 2.0),
        ],
        Text(
          '${date.day.toString()} ${DateFormat.MMMM().format(date).toString().substring(0, 3)}.',
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
