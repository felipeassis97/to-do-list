import 'package:flutter/material.dart';
import 'package:to_do/src/shared/theme/app_theme/color_scheme_theme.dart';
import 'package:to_do/src/shared/theme/app_theme/text_theme.dart';

class ListTileThemeApp {
  static ListTileThemeData theme(ThemeMode mode) {
    final colorScheme =
        mode == ThemeMode.light ? lightColorScheme : darkColorScheme;
    return ListTileThemeData(
      titleTextStyle: TextThemeApp.theme.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
        color: colorScheme.onBackground,
      ),
      subtitleTextStyle: TextThemeApp.theme.titleSmall?.copyWith(
        fontWeight: FontWeight.w400,
        color: colorScheme.outline,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      minVerticalPadding: 2,
      minLeadingWidth: 5,
    );
  }
}
