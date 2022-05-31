import 'package:flutter/material.dart';
import 'package:flutter_svg/Flutter_svg.dart';

import '../../../../config/theme/palette.dart';
import '../../../../core/consts/image_paths.dart';

class JobOffersCard extends StatelessWidget {
  const JobOffersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String description =
        'Job offers are shown here! Keep your profile updated to stay relevant for new opportunities.';
    return InkWell(
      borderRadius: BorderRadius.circular(4.0),
      onTap: () {},
      child: Ink(
        height: 128.0,
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 20.0),
        decoration: BoxDecoration(
          color: Palette.gray25,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(ImagePaths.jobOffersImage),
            const SizedBox(width: 18.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.headline6,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Go to my profile',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(width: 6.0),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
