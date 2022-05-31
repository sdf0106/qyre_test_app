import 'package:flutter/material.dart';
import '../../../config/theme/palette.dart';
import '../../../core/consts/image_paths.dart';
import 'tab_container.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TabContainer(
            imagePath: ImagePaths.networkImage,
            title: 'My Network',
            desription: 'Connect and grow your network',
            gradient: Palette.gradientBlue,
            onPressed: () {},
          ),
          TabContainer(
            imagePath: ImagePaths.qyreImage,
            title: 'Quick hire',
            desription: 'Hire someone quickly today',
            gradient: Palette.gradientRed,
            onPressed: () {},
          ),
          TabContainer(
            imagePath: ImagePaths.networkImage,
            title: 'My CV',
            desription: 'Keep your CV updated to get relevant offers',
            gradient: Palette.gradientPurple,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
