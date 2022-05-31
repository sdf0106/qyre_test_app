import 'package:flutter/material.dart';
import 'job_offers_card.dart';

class JobOffersContent extends StatelessWidget {
  const JobOffersContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My job offers',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 10.0),
          const JobOffersCard(),
        ],
      ),
    );
  }
}
