import 'package:flutter/material.dart';

import '../../../../../config/theme/palette.dart';

import 'app_bar_content.dart';

class QyreAppBar extends StatelessWidget {
  const QyreAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Palette.white.withOpacity(0.7),
            // backgroundBlendMode: BlendMode.dstIn,
          ),
          padding: const EdgeInsets.fromLTRB(16.0, 64.0, 0.0, 14.0),
          child: Text(
            'My Availability',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        const AppBarContent(),
      ],
    );
  }
}
