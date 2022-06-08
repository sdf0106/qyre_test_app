import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets.dart/error_text.dart';
import '../../../domain/blocs/profile_completeness/profile_completeness_bloc.dart';
import 'suggestion_card.dart';
import '../../../../../injection.dart';

import '../../../../../core/widgets.dart/circular_progress_indicator.dart';
import '../../../domain/blocs/capability_verification/capability_verification_bloc.dart';
import '../../../domain/blocs/network_extension/network_extension_bloc.dart';

class SuggestionsList extends StatelessWidget {
  const SuggestionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<ProfileCompletenessBloc>()
            ..add(
              const ProfileCompletenessEvent.getProfileComleteness(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<NetworkExtensionBloc>()
            ..add(
              const NetworkExtensionEvent.getNetworkExtension(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<CapabilityVerificationBloc>()
            ..add(
              const CapabilityVerificationEvent.getVerification(),
            ),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Wrap(
            children: const [
              SizedBox(width: 16.0),
              _ProfileCompletionSuggestion(),
              SizedBox(width: 10.0),
              _GetNetwork(),
              SizedBox(width: 16.0),
              _GetCapabilityVerification(),
              SizedBox(width: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileCompletionSuggestion extends StatelessWidget {
  const _ProfileCompletionSuggestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    return BlocBuilder<ProfileCompletenessBloc, ProfileCompletenessState>(
      builder: (context, state) {
        state.maybeWhen(
          loading: () {
            widget = const QyreCircularProgressIndicator();
          },
          profileCompletenessGotten: (double percentage) {
            widget = SuggestionCard(
              text:
                  'Complete your profile tooptimize your exposure in job searches.',
              buttonText: 'Complete profile',
              hasPercentageIndicator: true,
              percentage: percentage,
              onPressed: () {},
            );
          },
          failure: (String errorText) {
            widget = ErrorText(text: errorText);
          },
          orElse: () {
            widget = Text(
              'No Suggestions on Profile Completion',
              style: Theme.of(context).textTheme.bodyText1,
            );
          },
        );

        return widget;
      },
    );
  }
}

class _GetNetwork extends StatelessWidget {
  const _GetNetwork({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    return BlocBuilder<NetworkExtensionBloc, NetworkExtensionState>(
      builder: (context, state) {
        state.maybeWhen(
          loading: () {
            widget = const QyreCircularProgressIndicator();
          },
          canExtendNetwork: (bool status) {
            widget = SuggestionCard(
              text:
                  'Connect with people you might know and extend your network.',
              buttonText: 'Connect',
              hasPercentageIndicator: !status,
              onPressed: () {},
            );
          },
          failure: (String errorText) {
            widget = ErrorText(text: errorText);
          },
          orElse: () {
            widget = Text(
              'No People to suggest',
              style: Theme.of(context).textTheme.bodyText1,
            );
          },
        );

        return widget;
      },
    );
  }
}

class _GetCapabilityVerification extends StatelessWidget {
  const _GetCapabilityVerification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CapabilityVerificationBloc, CapabilityVerificationState>(
      builder: (context, state) {
        return state.maybeWhen(
          canVerify: (status) {
            return SuggestionCard(
              text: 'Get verified as an industry professional.',
              buttonText: 'Get verified',
              hasPercentageIndicator: !status,
              onPressed: () {},
            );
          },
          failure: (String errorText) {
            return ErrorText(text: errorText);
          },
          orElse: () {
            return const ErrorText(
              text: 'No People to suggest',
            );
          },
        );
      },
    );
  }
}
