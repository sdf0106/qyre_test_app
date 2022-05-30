import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String desription;
  final LinearGradient gradient;
  final VoidCallback onPressed;
  const TabContainer({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.desription,
    required this.gradient,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(4.0),
        child: Ink(
          height: 140.0,
          width: 110.0,
          padding: const EdgeInsets.only(top: 17.0, left: 12.0, right: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            gradient: gradient,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(imagePath),
              const SizedBox(height: 12.0),
              Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 3.0),
              Flexible(
                child: Text(
                  desription,
                  style: Theme.of(context).textTheme.headline5,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
