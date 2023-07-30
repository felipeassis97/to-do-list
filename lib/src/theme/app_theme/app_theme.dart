import 'package:flutter/material.dart';
import 'package:to_do_list/src/theme/app_theme/app_bar_theme.dart';
import 'package:to_do_list/src/theme/app_theme/bottom_sheet_theme.dart';
import 'package:to_do_list/src/theme/app_theme/buttons_theme.dart';
import 'package:to_do_list/src/theme/app_theme/color_scheme_theme.dart';
import 'package:to_do_list/src/theme/app_theme/dialog_theme.dart';
import 'package:to_do_list/src/theme/app_theme/extension_colors.dart';
import 'package:to_do_list/src/theme/app_theme/input_decoration_theme.dart';
import 'package:to_do_list/src/theme/app_theme/switch_teme.dart';
import 'package:to_do_list/src/theme/app_theme/text_theme.dart';

class AppTheme {
  static ThemeData theme() => ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        extensions: [extensionColorLight],
        elevatedButtonTheme: ElevatedButtonThemeApp.theme(ThemeMode.light),
        outlinedButtonTheme: OutlinedButtonThemeApp.theme(ThemeMode.light),
        textButtonTheme: TextButtonThemeApp.theme(ThemeMode.light),
        inputDecorationTheme: InputDecorationThemeApp.theme(ThemeMode.light),
        textTheme: TextThemeApp.theme,
        appBarTheme: AppBarThemeApp.theme(ThemeMode.light),
        dialogTheme: DialogThemeApp.theme(ThemeMode.light),
        switchTheme: SwitchThemeApp.theme(ThemeMode.light),
        bottomSheetTheme: BottomSheetThemeApp.theme(ThemeMode.light),
      );

  static ThemeData darkTheme() => ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        extensions: [extensionColorDark],
        elevatedButtonTheme: ElevatedButtonThemeApp.theme(ThemeMode.dark),
        outlinedButtonTheme: OutlinedButtonThemeApp.theme(ThemeMode.dark),
        textButtonTheme: TextButtonThemeApp.theme(ThemeMode.dark),
        inputDecorationTheme: InputDecorationThemeApp.theme(ThemeMode.dark),
        textTheme: TextThemeApp.theme,
        appBarTheme: AppBarThemeApp.theme(ThemeMode.dark),
        dialogTheme: DialogThemeApp.theme(ThemeMode.dark),
        switchTheme: SwitchThemeApp.theme(ThemeMode.dark),
        bottomSheetTheme: BottomSheetThemeApp.theme(ThemeMode.dark),
        scaffoldBackgroundColor: darkColorScheme.background,
      );
}
