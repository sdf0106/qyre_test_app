import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../dot_indicator/dot_indicator.dart';

import '../../../../../config/theme/palette.dart';
// ignore_for_file: must_be_immutable

class DayContainerExtended extends StatelessWidget {
  final DateTime dateTime;
  bool? isAvailable;
  DayContainerExtended({
    Key? key,
    required this.dateTime,
    this.isAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now().day;
    return Container(
      width: 62.0,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        children: [
          if (dateTime.day == today) ...[
            Text(
              'Today',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Palette.gray100,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 4.0),
          ],
          Text(
            DateFormat.E().format(dateTime).toString().substring(0, 3),
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontSize: 12.0,
                ),
          ),
          const SizedBox(height: 2.0),
          Text(
            DateFormat.MMMM().format(dateTime).toString().substring(0, 3),
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 2.0),
          Text(
            dateTime.day.toString(),
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 16.0,
                ),
          ),
          if (isAvailable != null) ...[
            const SizedBox(height: 8.0),
            DotIndicator(
              isAvailable: isAvailable!,
            ),
          ],
        ],
      ),
    );
  }
}
