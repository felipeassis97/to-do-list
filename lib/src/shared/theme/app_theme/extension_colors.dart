import 'package:flutter/material.dart';

class ExtensionsColor extends ThemeExtension<ExtensionsColor> {
  final Color yellow;

  ExtensionsColor({required this.yellow});

  @override
  ThemeExtension<ExtensionsColor> copyWith() {
    return ExtensionsColor(yellow: yellow);
  }

  @override
  ThemeExtension<ExtensionsColor> lerp(
      covariant ThemeExtension<ExtensionsColor>? other, double t) {
    if (other is! ExtensionsColor) {
      return this;
    }
    return ExtensionsColor(
        yellow: Color.lerp(yellow, other.yellow, t) ?? yellow);
  }
}

final extensionColorDark = ExtensionsColor(yellow: const Color(0xFFFFEB33));
final extensionColorLight = ExtensionsColor(yellow: const Color(0xFFF9E52C));
