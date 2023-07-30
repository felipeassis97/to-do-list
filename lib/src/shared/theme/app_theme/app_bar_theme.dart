import 'package:flutter/material.dart';
import 'package:to_do_list/src/shared/theme/app_theme/color_scheme_theme.dart';
import 'package:to_do_list/src/shared/theme/app_theme/text_theme.dart';

class AppBarThemeApp {
  static AppBarTheme theme(ThemeMode mode) {
    final colorScheme =
        mode == ThemeMode.light ? lightColorScheme : darkColorScheme;
    return AppBarTheme(
      backgroundColor: colorScheme.background,
      titleTextStyle: TextThemeApp.theme.headlineMedium?.copyWith(
        fontWeight: FontWeight.w700,
        color: colorScheme.onBackground,
      ),
      actionsIconTheme: IconThemeData(
        color: colorScheme.onBackground,
      ),
      iconTheme: IconThemeData(
        color: colorScheme.onBackground,
      ),
      centerTitle: false,
    );
  }
}
