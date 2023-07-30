import 'package:flutter/material.dart';
import 'package:to_do_list/src/theme/app_theme/color_scheme_theme.dart';
import 'text_theme.dart';

class ElevatedButtonThemeApp {
  static ElevatedButtonThemeData theme(ThemeMode mode) {
    final colorScheme =
        mode == ThemeMode.light ? lightColorScheme : darkColorScheme;
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(colorScheme.onPrimary),
        backgroundColor: MaterialStateProperty.all(colorScheme.primary),
        textStyle:
            MaterialStateProperty.all(TextThemeApp.theme.bodyLarge?.copyWith(
          color: colorScheme.inversePrimary,
          fontWeight: FontWeight.w700,
        )),
        padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )),
      ),
    );
  }
}

class OutlinedButtonThemeApp {
  static OutlinedButtonThemeData theme(ThemeMode mode) {
    final colorScheme =
        mode == ThemeMode.light ? lightColorScheme : darkColorScheme;
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(colorScheme.primary),
        textStyle:
            MaterialStateProperty.all(TextThemeApp.theme.bodyLarge?.copyWith(
          color: colorScheme.inversePrimary,
          fontWeight: FontWeight.w700,
        )),
        padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )),
      ),
    );
  }
}

class TextButtonThemeApp {
  static TextButtonThemeData theme(ThemeMode mode) {
    final colorScheme =
        mode == ThemeMode.light ? lightColorScheme : darkColorScheme;
    return TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(colorScheme.primary),
        textStyle:
            MaterialStateProperty.all(TextThemeApp.theme.bodyLarge?.copyWith(
          color: colorScheme.inversePrimary,
          fontWeight: FontWeight.w700,
        )),
        padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )),
      ),
    );
  }
}
