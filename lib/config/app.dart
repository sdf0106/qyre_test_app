import 'package:flutter/material.dart';
import 'package:qyre_test_app/config/theme/theme.dart';
import 'package:qyre_test_app/features/home/presentation/pages/home_page.dart';

class QyreTestApp extends StatelessWidget {
  const QyreTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const HomePage(),
    );
  }
}
