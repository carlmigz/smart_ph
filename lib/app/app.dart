import 'package:flutter/material.dart';

import '../core/constants/app_strings.dart';
import '../presentation/pages/home_page.dart';
import '../theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: AppTheme.light(),
      home: const HomePage(title: AppStrings.homePageTitle),
    );
  }
}

