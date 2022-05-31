import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/theme/palette.dart';
import '../../../core/consts/image_paths.dart';

class StarredPostsPlaceHolder extends StatelessWidget {
  const StarredPostsPlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.0,
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 20.0),
      decoration: BoxDecoration(
        color: Palette.gray25,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(ImagePaths.starredImage),
          const SizedBox(width: 20.0),
          Flexible(
            child: Text(
              'Posts that are extra relevant to you can be marked with a star and will be shown here for easy access.',
              style: Theme.of(context).textTheme.bodyText2,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
