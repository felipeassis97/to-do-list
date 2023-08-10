import 'package:flutter/material.dart';
import 'package:to_do/src/shared/theme/app_theme/color_scheme_theme.dart';

class SwitchThemeApp {
  static SwitchThemeData theme(ThemeMode mode) {
    final colorScheme =
        mode == ThemeMode.light ? lightColorScheme : darkColorScheme;
    return SwitchThemeData(
      trackColor: MaterialStateProperty.all(colorScheme.primary),
      trackOutlineColor: MaterialStateProperty.all(colorScheme.onPrimary),
      thumbColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return colorScheme.tertiary;
        }

        return colorScheme.outline;
      }),
      overlayColor:
          MaterialStateProperty.all(colorScheme.secondary.withOpacity(0.5)),
      splashRadius: 24,
      //   materialTapTargetSize: MaterialTapTargetSize.padded,
    );
  }
}
