import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isAvailable;
  const DotIndicator({
    Key? key,
    required this.isAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: isAvailable
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.onPrimary,
        shape: BoxShape.circle,
      ),
    );
  }
}
