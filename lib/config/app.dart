import 'package:flutter/material.dart';
import 'theme/theme.dart';
import '../features/home/presentation/pages/home_page.dart';

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
