import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QyreBottomNavigationBarItem extends StatelessWidget {
  final String iconPath;
  final int notifications;
  const QyreBottomNavigationBarItem({
    Key? key,
    required this.iconPath,
    this.notifications = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: Stack(
        children: [
          if (notifications != 0)
            _NotificationIndecator(
              amount: notifications,
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              iconPath,
              color: Colors.white, //Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ].reversed.toList(),
      ),
    );
  }
}

class _NotificationIndecator extends StatelessWidget {
  final int amount;
  const _NotificationIndecator({
    Key? key,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      right: 0.0,
      child: Container(
        height: 16.0,
        width: 16.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            shape: BoxShape.circle),
        child: Text(
          amount.toString(),
          style: Theme.of(context).textTheme.headline5!,
        ),
      ),
    );
  }
}
