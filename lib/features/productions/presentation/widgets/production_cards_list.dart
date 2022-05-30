import 'package:flutter/material.dart';
import 'package:qyre_test_app/features/productions/presentation/widgets/production_card.dart';

class ProductCardsList extends StatelessWidget {
  const ProductCardsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today\'s Productions',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 20.0),
          const ProductionCard(),
        ],
      ),
    );
  }
}
