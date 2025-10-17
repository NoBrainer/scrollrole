import 'package:flutter/material.dart';

class AppTheme {
  //TODO: Come up with a better color scheme
  static final ColorScheme _colorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    dynamicSchemeVariant: DynamicSchemeVariant.fruitSalad,
    seedColor: Colors.white,
  );

  static const double _iconFontSize = 32;
  static const double _headlineFontSize = 32;
  static const double _titleFontSize = 24;
  static const double _textFontSize = 18;

  static final ThemeData defaultTheme = ThemeData(
    colorScheme: _colorScheme,
    canvasColor: _colorScheme.primaryContainer,
    cardTheme: CardThemeData(
      color: _colorScheme.secondaryContainer,
    ),
    iconTheme: IconThemeData(
      color: _colorScheme.onSurface,
      size: _iconFontSize,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: _colorScheme.tertiaryContainer,
      closeIconColor: _colorScheme.onTertiaryContainer,
      showCloseIcon: true,
    ),
    tabBarTheme: TabBarThemeData(
      dividerColor: _colorScheme.onSurface,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: TextStyle(fontSize: _headlineFontSize),
    ),
    textTheme: TextTheme(
      // Headlines
      headlineLarge: const TextStyle()
          .copyWith(fontSize: _headlineFontSize, fontWeight: FontWeight.bold),
      headlineMedium: const TextStyle()
          .copyWith(fontSize: _headlineFontSize, fontWeight: FontWeight.normal),
      headlineSmall: const TextStyle()
          .copyWith(fontSize: _headlineFontSize, fontWeight: FontWeight.w200),
      // Titles
      titleLarge: const TextStyle()
          .copyWith(fontSize: _titleFontSize, fontWeight: FontWeight.bold),
      titleMedium: const TextStyle()
          .copyWith(fontSize: _titleFontSize, fontWeight: FontWeight.normal),
      titleSmall: const TextStyle()
          .copyWith(fontSize: _titleFontSize, fontWeight: FontWeight.w200),
      // Text
      displayLarge: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.bold),
      displayMedium: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.normal),
      displaySmall: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.w200),
      bodyLarge: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.bold),
      bodyMedium: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.normal),
      bodySmall: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.w200),
      labelLarge: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.bold),
      labelMedium: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.normal),
      labelSmall: const TextStyle()
          .copyWith(fontSize: _textFontSize, fontWeight: FontWeight.w200),
    ),
    tooltipTheme: const TooltipThemeData(preferBelow: false),
  );
}
