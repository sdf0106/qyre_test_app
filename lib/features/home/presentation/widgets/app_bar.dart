import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/extending_app_bar_cubit.dart';

class QyreAppBar extends StatelessWidget {
  const QyreAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: Colors.white.withOpacity(0.7),
          padding: const EdgeInsets.fromLTRB(14.0, 64.0, 0.0, 14.0),
          child: const Text(
            'My Availability',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
        const _AppBarContent(),
      ],
    );
  }
}

class _AppBarContent extends StatelessWidget {
  const _AppBarContent({Key? key}) : super(key: key);

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
            return appBarContent(value);
          },
        );
      },
    );
  }

  Container appBarContent(double value) {
    return Container(
      height: value,
      color: Colors.white.withOpacity(0.7),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 30.0,
                width: 50.0,
                color: Colors.red,
              ),
            ),
        ],
      ),
    );
  }
}
