import 'dart:ui' as UI;

import 'package:flutter/material.dart';

import '../../../../../config/theme/palette.dart';
import 'app_bar_content.dart';

class QyreAppBar extends StatelessWidget {
  final double setWidth;
  const QyreAppBar({
    Key? key,
    required this.setWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRect(
          child: BackdropFilter(
            filter: UI.ImageFilter.blur(
              sigmaX: 15.0,
              sigmaY: 15.0,
            ),
            child: Container(
              width: setWidth,
              decoration: BoxDecoration(
                color: Palette.white.withOpacity(0.7),
                backgroundBlendMode: BlendMode.srcOver,
              ),
              padding: const EdgeInsets.fromLTRB(16.0, 64.0, 0.0, 14.0),
              child: Text(
                'My Availability',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
        ),
        ClipRect(
          child: BackdropFilter(
            filter: UI.ImageFilter.blur(
              sigmaX: 15.0,
              sigmaY: 15.0,
            ),
            child: const AppBarContent(),
          ),
        ),
      ],
    );
  }
}
