import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qyre_test_app/core/consts/image_paths.dart';

import '../../../../config/theme/palette.dart';

class ProductionCard extends StatelessWidget {
  const ProductionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        height: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Palette.gray25,
        ),
        child: Row(
          children: [
            Container(
              width: 70.0,
              margin: const EdgeInsets.only(right: 16.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePaths.firstProdImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  bottomLeft: Radius.circular(4.0),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Production Name That is Long\n',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  TextSpan(
                    text: 'Sweden Jan 14, 2022 - Feb 23, 2023',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 15.0),
                alignment: Alignment.centerRight,
                height: 20.0,
                width: 20.0,
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
