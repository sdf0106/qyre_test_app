import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'config/app.dart';
import 'config/bloc/bloc_observer.dart';

Future<void> main() async => runZonedGuarded(
      () {
        BlocOverrides.runZoned(
          () => runApp(const QyreTestApp()),
          blocObserver: AppBlocObserver(),
        );
      },
      (error, stackTrace) {
        log('Error: $error');
        log('StackTrace: $stackTrace');
      },
    );
