import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qyre_test_app/features/availability/domain/blocs/availability/availability_bloc.dart';
import 'package:qyre_test_app/features/availability/presentation/widgets/list_of_availability.dart';
import 'package:qyre_test_app/features/suggestions/presentation/widgets/suggestion_elements/suggestions_list.dart';
import 'package:qyre_test_app/features/tabs/presentation/tabs.dart';
import 'package:qyre_test_app/injection.dart';

import '../../../job_offers/presentation/widgets/job_offers_content.dart';
import '../../../productions/presentation/widgets/production_cards_list.dart';
import '../../../starred_posts/widgets/starred_posts_content.dart';
import '../cubit/extending_app_bar_cubit.dart';
import '../widgets/app_bar/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ExtendingAppBarCubit(),
        ),
        BlocProvider(
          create: (_) => getIt<AvailabilityBloc>()
            ..add(const AvailabilityEvent.fetchInfo()),
        ),
      ],
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Stack(
          children: const [
            HomeScrollableView(),
            QyreAppBar(),
          ],
        ),
        bottomNavigationBar: const QyreBottomNavigationBar(),
      ),
    );
  }
}

class HomeScrollableView extends StatefulWidget {
  const HomeScrollableView({Key? key}) : super(key: key);

  @override
  State<HomeScrollableView> createState() => _HomeScrollableViewState();
}

class _HomeScrollableViewState extends State<HomeScrollableView> {
  final _controller = ScrollController();
  bool _isAppBarExtended = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_controller.position.pixels <= 130.0) {
      if (_isAppBarExtended) {
        _isAppBarExtended = false;
        context.read<ExtendingAppBarCubit>().reduce();
      }
    } else {
      if (!_isAppBarExtended) {
        _isAppBarExtended = true;
        context.read<ExtendingAppBarCubit>().extend();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 120.0),
          ListOfAvailability(),
          SuggestionsList(),
          ProductCardsList(),
          Tabs(),
          JobOffersContent(),
          StarredPostsContent()
        ],
      ),
    );
  }
}
