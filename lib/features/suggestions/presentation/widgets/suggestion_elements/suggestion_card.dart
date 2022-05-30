import 'package:flutter/material.dart';

import '../../../../../config/theme/palette.dart';

class SuggestionCard extends StatelessWidget {
  final String text;
  final String buttonText;
  final bool hasPercentageIndicator;
  final double percentage;
  final VoidCallback onPressed;
  const SuggestionCard({
    Key? key,
    required this.text,
    required this.buttonText,
    required this.hasPercentageIndicator,
    this.percentage = 0.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(4.0),
      child: Ink(
        height: 136.0,
        width: 300.0,
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 20.0),
        decoration: BoxDecoration(
          color: Palette.gray25,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _wrappedText(context),
            if (hasPercentageIndicator) _percentageContainer(context),
            _buttonRaw(context),
          ],
        ),
      ),
    );
  }

  Row _buttonRaw(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          buttonText,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(width: 6.0),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 10.0,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ],
    );
  }

  Row _percentageContainer(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 9.0,
          width: 268.0 * percentage,
          color: Palette.blueFaded,
        ),
        Container(
          height: 9.0,
          width: 268 - 268.0 * percentage,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ],
    );
  }

  Wrap _wrappedText(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
