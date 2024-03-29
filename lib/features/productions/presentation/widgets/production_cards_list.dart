import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/circular_progress_indicator.dart';
import '../../../../core/widgets/error_text.dart';
import 'production_card.dart';
import 'productions_placeholder.dart';

import '../../../../injection.dart';
import '../../domain/blocs/bloc/get_productions_bloc.dart';
import '../../domain/entities/production.dart';

class ProductCardsList extends StatelessWidget {
  const ProductCardsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GetProductionsBloc>()
        ..add(
          const GetProductionsEvent.getProductions(),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today\'s Productions',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 10.0),
            const _ProductCardListContent(),
          ],
        ),
      ),
    );
  }
}

class _ProductCardListContent extends StatelessWidget {
  const _ProductCardListContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductionsBloc, GetProductionsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const QyreCircularProgressIndicator();
          },
          productsGotten: (List<Production> prods) {
            return _listProvider(prods);
          },
          failure: (String errorMessage) {
            return ErrorText(text: errorMessage);
          },
          orElse: () {
            return const PoductionsPlaceHolder();
          },
        );
      },
    );
  }

  Column _listProvider(List<Production> prods) {
    return Column(
      children: [
        for (int i = 0; i < 2; i++) ...[
          ProductionCard(
            productName: prods[i].productName,
            imagePath: prods[i].imagePath,
            location: prods[i].location,
            startTime: prods[i].startTime,
            endTime: prods[i].endTime,
          ),
          const SizedBox(height: 10.0),
        ],
      ],
    );
  }
}
