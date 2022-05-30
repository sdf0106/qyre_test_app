import 'package:flutter/material.dart';

import '../../config/theme/palette.dart';

class ErrorText extends StatelessWidget {
  final String text;
  const ErrorText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2?.copyWith(
            color: Palette.red,
          ),
    );
  }
}
