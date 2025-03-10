import 'package:flutter/material.dart';

/// Artefact theme.
class ArtefactTheme {
  const ArtefactTheme(this.textTheme);
  final TextTheme textTheme;

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xffb80043),
      surfaceTint: Color(0xffbd0045),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffde2459),
      onPrimaryContainer: Color(0xfffffbff),
      secondary: Color(0xffa3394e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfffd7e93),
      onSecondaryContainer: Color(0xff74142d),
      tertiary: Color(0xff9d3f00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc45100),
      onTertiaryContainer: Color(0xfffffbff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff271719),
      onSurfaceVariant: Color(0xff5b4043),
      outline: Color(0xff8f6f72),
      outlineVariant: Color(0xffe3bdc1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3e2c2e),
      inversePrimary: Color(0xffffb2bb),
      primaryFixed: Color(0xffffd9dd),
      onPrimaryFixed: Color(0xff400012),
      primaryFixedDim: Color(0xffffb2bb),
      onPrimaryFixedVariant: Color(0xff910033),
      secondaryFixed: Color(0xffffd9dd),
      onSecondaryFixed: Color(0xff400012),
      secondaryFixedDim: Color(0xffffb2bb),
      onSecondaryFixedVariant: Color(0xff842138),
      tertiaryFixed: Color(0xffffdbcc),
      onTertiaryFixed: Color(0xff351000),
      tertiaryFixedDim: Color(0xffffb693),
      onTertiaryFixedVariant: Color(0xff7a2f00),
      surfaceDim: Color(0xfff0d3d5),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f1),
      surfaceContainer: Color(0xffffe9ea),
      surfaceContainerHigh: Color(0xffffe1e3),
      surfaceContainerHighest: Color(0xfff9dbde),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff720026),
      surfaceTint: Color(0xffbd0045),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd41952),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6d0d28),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffb6475c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff602300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb84b00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff1c0d0f),
      onSurfaceVariant: Color(0xff492f32),
      outline: Color(0xff684b4e),
      outlineVariant: Color(0xff846568),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3e2c2e),
      inversePrimary: Color(0xffffb2bb),
      primaryFixed: Color(0xffd41952),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xffab003e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffb6475c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff972f45),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffb84b00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff913a00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcc0c2),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f1),
      surfaceContainer: Color(0xffffe1e3),
      surfaceContainerHigh: Color(0xfff3d6d8),
      surfaceContainerHighest: Color(0xffe8cbcd),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5f001f),
      surfaceTint: Color(0xffbd0045),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff950035),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5f001f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff87233a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4f1c00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7e3100),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff3e2629),
      outlineVariant: Color(0xff5d4245),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3e2c2e),
      inversePrimary: Color(0xffffb2bb),
      primaryFixed: Color(0xff950035),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff6b0024),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff87233a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff680825),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7e3100),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5a2100),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffceb2b4),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffeced),
      surfaceContainer: Color(0xfff9dbde),
      surfaceContainerHigh: Color(0xffebcdd0),
      surfaceContainerHighest: Color(0xffdcc0c2),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb2bb),
      surfaceTint: Color(0xffffb2bb),
      onPrimary: Color(0xff670022),
      primaryContainer: Color(0xffff4f76),
      onPrimaryContainer: Color(0xff260007),
      secondary: Color(0xffffb2bb),
      onSecondary: Color(0xff650523),
      secondaryContainer: Color(0xff87233a),
      onSecondaryContainer: Color(0xffff9caa),
      tertiary: Color(0xffffb693),
      onTertiary: Color(0xff561f00),
      tertiaryContainer: Color(0xffeb6a1e),
      onTertiaryContainer: Color(0xff1f0700),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1e0f11),
      onSurface: Color(0xfff9dbde),
      onSurfaceVariant: Color(0xffe3bdc1),
      outline: Color(0xffaa888c),
      outlineVariant: Color(0xff5b4043),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff9dbde),
      inversePrimary: Color(0xffbd0045),
      primaryFixed: Color(0xffffd9dd),
      onPrimaryFixed: Color(0xff400012),
      primaryFixedDim: Color(0xffffb2bb),
      onPrimaryFixedVariant: Color(0xff910033),
      secondaryFixed: Color(0xffffd9dd),
      onSecondaryFixed: Color(0xff400012),
      secondaryFixedDim: Color(0xffffb2bb),
      onSecondaryFixedVariant: Color(0xff842138),
      tertiaryFixed: Color(0xffffdbcc),
      onTertiaryFixed: Color(0xff351000),
      tertiaryFixedDim: Color(0xffffb693),
      onTertiaryFixedVariant: Color(0xff7a2f00),
      surfaceDim: Color(0xff1e0f11),
      surfaceBright: Color(0xff473436),
      surfaceContainerLowest: Color(0xff180a0c),
      surfaceContainerLow: Color(0xff271719),
      surfaceContainer: Color(0xff2c1b1d),
      surfaceContainerHigh: Color(0xff372527),
      surfaceContainerHighest: Color(0xff433032),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd1d5),
      surfaceTint: Color(0xffffb2bb),
      onPrimary: Color(0xff53001a),
      primaryContainer: Color(0xffff4f76),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd1d5),
      onSecondary: Color(0xff53001a),
      secondaryContainer: Color(0xffe36a7f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd3c0),
      onTertiary: Color(0xff451700),
      tertiaryContainer: Color(0xffeb6a1e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1e0f11),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffad3d6),
      outline: Color(0xffcda9ac),
      outlineVariant: Color(0xffaa888b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff9dbde),
      inversePrimary: Color(0xff930034),
      primaryFixed: Color(0xffffd9dd),
      onPrimaryFixed: Color(0xff2c000a),
      primaryFixedDim: Color(0xffffb2bb),
      onPrimaryFixedVariant: Color(0xff720026),
      secondaryFixed: Color(0xffffd9dd),
      onSecondaryFixed: Color(0xff2c000a),
      secondaryFixedDim: Color(0xffffb2bb),
      onSecondaryFixedVariant: Color(0xff6d0d28),
      tertiaryFixed: Color(0xffffdbcc),
      onTertiaryFixed: Color(0xff240900),
      tertiaryFixedDim: Color(0xffffb693),
      onTertiaryFixedVariant: Color(0xff602300),
      surfaceDim: Color(0xff1e0f11),
      surfaceBright: Color(0xff533f41),
      surfaceContainerLowest: Color(0xff100406),
      surfaceContainerLow: Color(0xff29191b),
      surfaceContainer: Color(0xff352325),
      surfaceContainerHigh: Color(0xff402e30),
      surfaceContainerHighest: Color(0xff4c393b),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffebec),
      surfaceTint: Color(0xffffb2bb),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffacb7),
      onPrimaryContainer: Color(0xff210006),
      secondary: Color(0xffffebec),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffacb7),
      onSecondaryContainer: Color(0xff210006),
      tertiary: Color(0xffffece5),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb08b),
      onTertiaryContainer: Color(0xff1a0500),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1e0f11),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffebec),
      outlineVariant: Color(0xffdfb9bd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff9dbde),
      inversePrimary: Color(0xff930034),
      primaryFixed: Color(0xffffd9dd),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb2bb),
      onPrimaryFixedVariant: Color(0xff2c000a),
      secondaryFixed: Color(0xffffd9dd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb2bb),
      onSecondaryFixedVariant: Color(0xff2c000a),
      tertiaryFixed: Color(0xffffdbcc),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb693),
      onTertiaryFixedVariant: Color(0xff240900),
      surfaceDim: Color(0xff1e0f11),
      surfaceBright: Color(0xff604b4d),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff2c1b1d),
      surfaceContainer: Color(0xff3e2c2e),
      surfaceContainerHigh: Color(0xff4a3639),
      surfaceContainerHighest: Color(0xff564244),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  /// [ThemeData] for the Artefact.
  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        navigationRailTheme: const NavigationRailThemeData(
          backgroundColor: Colors.transparent,
          labelType: NavigationRailLabelType.none,
          groupAlignment: 0,
        ),
        navigationBarTheme: const NavigationBarThemeData(elevation: 0),
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
