import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qyre_test_app/features/availability/presentation/widgets/day_container_extended.dart/day_container_extended.dart';

import '../../../../config/theme/palette.dart';
import '../../domain/blocs/availability/availability_bloc.dart';
import '../../domain/entities/day.dart';

class ListOfAvailability extends StatelessWidget {
  const ListOfAvailability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    return BlocBuilder<AvailabilityBloc, AvailabilityState>(
      builder: (context, state) {
        state.maybeWhen(
          loading: () {
            widget = Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.primary,
              ),
            );
          },
          availabilityGotten: (List<Day> days) {
            widget = _getList(days);
          },
          failure: (String error) {
            widget = Text(
              error,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: Palette.red,
                  ),
            );
          },
          orElse: () {
            widget = Text(
              'error',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: Palette.red,
                  ),
            );
          },
        );
        return widget;
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
