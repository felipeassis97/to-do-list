import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_do/src/shared/theme/app_theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const themeMode = ThemeMode.light;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      themeMode: themeMode,
      theme: AppTheme.theme(),
      darkTheme: AppTheme.darkTheme(),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
