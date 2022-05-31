import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/consts/image_paths.dart';

import '../../../../config/theme/palette.dart';

class PoductionsPlaceHolder extends StatelessWidget {
  const PoductionsPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 20.0),
      decoration: BoxDecoration(
        color: Palette.gray25,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(ImagePaths.productionsImage),
          const SizedBox(width: 16.0),
          Flexible(
            child: Text(
              'All of your today\'s productions will be displayed here.',
              maxLines: 2,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ],
      ),
    );
  }
}
