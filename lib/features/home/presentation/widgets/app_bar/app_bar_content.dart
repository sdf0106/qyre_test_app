import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/error_text.dart';

import '../../../../../core/widgets/circular_progress_indicator.dart';
import '../../../../availability/domain/blocs/availability/availability_bloc.dart';
import '../../../../availability/domain/entities/day.dart';
import '../../../../availability/presentation/widgets/day_container_reduced/day_container_reduced.dart';
import '../../cubit/extending_app_bar_cubit.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExtendingAppBarCubit, bool>(
      builder: (context, state) {
        return TweenAnimationBuilder(
          tween: Tween<double>(
            begin: state ? 0.0 : 50.0,
            end: state ? 50.0 : 0.0,
          ),
          duration: const Duration(milliseconds: 100),
          builder: (BuildContext context, double value, widget) {
            return _AppBarContentBuilder(context: context, value: value);
          },
        );
      },
    );
  }
}

//----------------------------------------------
class _AppBarContentBuilder extends StatelessWidget {
  final BuildContext context;
  final double value;
  const _AppBarContentBuilder({
    Key? key,
    required this.context,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: value,
      color: Colors.white.withOpacity(0.7),
      padding: const EdgeInsets.only(bottom: 10.0),
      child: BlocBuilder<AvailabilityBloc, AvailabilityState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return const QyreCircularProgressIndicator();
            },
            availabilityGotten: (List<Day> days) {
              return getList(days);
            },
            failure: (String errorText) {
              return ErrorText(text: errorText);
            },
            orElse: () {
              return const Text(
                'error',
                textAlign: TextAlign.center,
              );
            },
          );
        },
      ),
    );
  }

  ListView getList(List<Day> days) => ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(width: 16.0),
          for (int i = 0; i < 7; i++) ...[
            DayContainerReduced(
              dateTime: days[i].dateTime,
              isAvailable: days[i].isAvailable,
            ),
            const SizedBox(width: 8.0),
          ],
          const SizedBox(width: 8.0),
        ],
      );
}
