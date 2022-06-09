import 'package:flutter/material.dart';

import '../../config/theme/palette.dart';

class QyreCircularProgressIndicator extends Center {
  const QyreCircularProgressIndicator({Key? key})
      : super(
          key: key,
          child: const CircularProgressIndicator(
            color: Palette.black50,
          ),
        );
}
