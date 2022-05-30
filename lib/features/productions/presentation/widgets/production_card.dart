import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../config/theme/palette.dart';

class ProductionCard extends StatelessWidget {
  final String productName;
  final String imagePath;
  final String location;
  final DateTime startTime;
  final DateTime endTime;
  const ProductionCard({
    Key? key,
    required this.productName,
    required this.imagePath,
    required this.location,
    required this.startTime,
    required this.endTime,
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
            _imageContainer(imagePath),
            _productionDescription(context),
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

  SingleChildScrollView _productionDescription(
    BuildContext context,
  ) {
    final formatter = DateFormat('MMM d, yyyy');
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$productName \n',
              style: Theme.of(context).textTheme.headline3,
            ),
            TextSpan(
              text:
                  '$location ${formatter.format(startTime)} - ${formatter.format(endTime)}',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }

  Container _imageContainer(String imagePath) {
    return Container(
      width: 70.0,
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4.0),
          bottomLeft: Radius.circular(4.0),
        ),
      ),
    );
  }
}
