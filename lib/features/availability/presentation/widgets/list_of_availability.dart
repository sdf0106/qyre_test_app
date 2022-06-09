import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'day_container_extended/day_container_extended.dart';

import '../../../../config/theme/palette.dart';
import '../../../../core/widgets/circular_progress_indicator.dart';
import '../../../../core/widgets/error_text.dart';
import '../../domain/blocs/availability/availability_bloc.dart';
import '../../domain/entities/day.dart';

class ListOfAvailability extends StatelessWidget {
  const ListOfAvailability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AvailabilityBloc, AvailabilityState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const QyreCircularProgressIndicator();
          },
          availabilityGotten: (List<Day> days) {
            return _getList(days);
          },
          failure: (String errorText) {
            return ErrorText(text: errorText);
          },
          orElse: () {
            return Text(
              'error',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: Palette.red,
                  ),
            );
          },
        );
      },
    );
  }

  SingleChildScrollView _getList(List<Day> days) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Wrap(
          children: [
            const SizedBox(width: 16.0),
            for (int i = 0; i < 7; i++) ...[
              DayContainerExtended(
                dateTime: days[i].dateTime,
                isAvailable: days[i].isAvailable,
              ),
              const SizedBox(width: 8.0),
            ],
            const SizedBox(width: 8.0),
          ],
        ),
      );
}
