import "package:flex_color_scheme/flex_color_scheme.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

import "theme_size.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
        brightness: colorScheme.brightness,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface.blend(colorScheme.surfaceTint, 30),
          displayColor: colorScheme.onSurface.blend(colorScheme.surfaceTint, 30),
        ),
        scaffoldBackgroundColor: colorScheme.surface.blend(colorScheme.surfaceTint, 5),
        buttonTheme: const ButtonThemeData(
          padding: EdgeInsets.symmetric(horizontal: Sizes.padding24),
          height: Sizes.buttonHeight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Sizes.radius20),
            ),
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: colorScheme.surfaceContainerHighest,
          ),
        ),
        cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.radius20),
          ),
        ),
        dividerColor: colorScheme.outlineVariant,
        dialogTheme: DialogTheme(
          elevation: 3,
          backgroundColor: colorScheme.surfaceContainerHigh,
        ),
        appBarTheme: AppBarTheme(
          color: colorScheme.surfaceContainerLow,
          systemOverlayStyle: const SystemUiOverlayStyle(
            //   statusBarColor: lightColorScheme.primary,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
        ),
        scrollbarTheme: ScrollbarThemeData(
          thickness: const WidgetStatePropertyAll(4),
          thumbVisibility: const WidgetStatePropertyAll(true),
          trackColor: WidgetStatePropertyAll(colorScheme.primary),
          thumbColor: WidgetStatePropertyAll(colorScheme.primary),
          trackBorderColor: WidgetStatePropertyAll(colorScheme.primary),
        ),
        visualDensity: VisualDensity.standard,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: colorScheme.surfaceContainerHighest,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.padding12),
        ),
        canvasColor: colorScheme.surface,
        fontFamily: 'Roboto',
      );

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4c662b),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcdeda3),
      onPrimaryContainer: Color(0xff102000),
      secondary: Color(0xff586249),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdce7c8),
      onSecondaryContainer: Color(0xff151e0b),
      tertiary: Color(0xff386663),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbcece7),
      onTertiaryContainer: Color(0xff00201e),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1c16),
      onSurfaceVariant: Color(0xff44483d),
      outline: Color(0xff75796c),
      outlineVariant: Color(0xffc5c8ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffb1d18a),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff102000),
      primaryFixedDim: Color(0xffb1d18a),
      onPrimaryFixedVariant: Color(0xff354e16),
      secondaryFixed: Color(0xffdce7c8),
      onSecondaryFixed: Color(0xff151e0b),
      secondaryFixedDim: Color(0xffbfcbad),
      onSecondaryFixedVariant: Color(0xff404a33),
      tertiaryFixed: Color(0xffbcece7),
      onTertiaryFixed: Color(0xff00201e),
      tertiaryFixedDim: Color(0xffa0d0cb),
      onTertiaryFixedVariant: Color(0xff1f4e4b),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff314a12),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff617d3f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3c462f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6e785e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1a4a47),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f7d79),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1c16),
      onSurfaceVariant: Color(0xff404439),
      outline: Color(0xff5d6155),
      outlineVariant: Color(0xff787c70),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffb1d18a),
      primaryFixed: Color(0xff617d3f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff496429),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6e785e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff555f47),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4f7d79),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff366460),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff142700),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff314a12),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1c2511),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3c462f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002725),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1a4a47),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff21251c),
      outline: Color(0xff404439),
      outlineVariant: Color(0xff404439),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffd6f7ac),
      primaryFixed: Color(0xff314a12),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff1c3300),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3c462f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff26301b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1a4a47),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003331),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb1d18a),
      surfaceTint: Color(0xffb1d18a),
      onPrimary: Color(0xff1f3701),
      primaryContainer: Color(0xff354e16),
      onPrimaryContainer: Color(0xffcdeda3),
      secondary: Color(0xffbfcbad),
      onSecondary: Color(0xff2a331e),
      secondaryContainer: Color(0xff404a33),
      onSecondaryContainer: Color(0xffdce7c8),
      tertiary: Color(0xffa0d0cb),
      onTertiary: Color(0xff003735),
      tertiaryContainer: Color(0xff1f4e4b),
      onTertiaryContainer: Color(0xffbcece7),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff12140e),
      onSurface: Color(0xffe2e3d8),
      onSurfaceVariant: Color(0xffc5c8ba),
      outline: Color(0xff8f9285),
      outlineVariant: Color(0xff44483d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff4c662b),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff102000),
      primaryFixedDim: Color(0xffb1d18a),
      onPrimaryFixedVariant: Color(0xff354e16),
      secondaryFixed: Color(0xffdce7c8),
      onSecondaryFixed: Color(0xff151e0b),
      secondaryFixedDim: Color(0xffbfcbad),
      onSecondaryFixedVariant: Color(0xff404a33),
      tertiaryFixed: Color(0xffbcece7),
      onTertiaryFixed: Color(0xff00201e),
      tertiaryFixedDim: Color(0xffa0d0cb),
      onTertiaryFixedVariant: Color(0xff1f4e4b),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb5d58e),
      surfaceTint: Color(0xffb1d18a),
      onPrimary: Color(0xff0c1a00),
      primaryContainer: Color(0xff7d9a59),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc4cfb1),
      onSecondary: Color(0xff101907),
      secondaryContainer: Color(0xff8a9579),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa4d4d0),
      onTertiary: Color(0xff001a19),
      tertiaryContainer: Color(0xff6b9995),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff12140e),
      onSurface: Color(0xfffbfcf0),
      onSurfaceVariant: Color(0xffc9ccbe),
      outline: Color(0xffa1a497),
      outlineVariant: Color(0xff818578),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff364f17),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff081400),
      primaryFixedDim: Color(0xffb1d18a),
      onPrimaryFixedVariant: Color(0xff253d05),
      secondaryFixed: Color(0xffdce7c8),
      onSecondaryFixed: Color(0xff0b1403),
      secondaryFixedDim: Color(0xffbfcbad),
      onSecondaryFixedVariant: Color(0xff303924),
      tertiaryFixed: Color(0xffbcece7),
      onTertiaryFixed: Color(0xff001413),
      tertiaryFixedDim: Color(0xffa0d0cb),
      onTertiaryFixedVariant: Color(0xff083d3a),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff4ffdf),
      surfaceTint: Color(0xffb1d18a),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb5d58e),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff4ffdf),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc4cfb1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffeafffc),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa4d4d0),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff12140e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff9fced),
      outline: Color(0xffc9ccbe),
      outlineVariant: Color(0xffc9ccbe),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff1a3000),
      primaryFixed: Color(0xffd1f2a7),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb5d58e),
      onPrimaryFixedVariant: Color(0xff0c1a00),
      secondaryFixed: Color(0xffe0ebcc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc4cfb1),
      onSecondaryFixedVariant: Color(0xff101907),
      tertiaryFixed: Color(0xffc0f0ec),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa4d4d0),
      onTertiaryFixedVariant: Color(0xff001a19),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  /// Green
  static const green = ExtendedColor(
    seed: Color(0xff28a745),
    value: Color(0xff28a745),
    light: ColorFamily(
      color: Color(0xff39693c),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffbaf0b7),
      onColorContainer: Color(0xff002106),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff39693c),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffbaf0b7),
      onColorContainer: Color(0xff002106),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff39693c),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffbaf0b7),
      onColorContainer: Color(0xff002106),
    ),
    dark: ColorFamily(
      color: Color(0xff9ed49c),
      onColor: Color(0xff053911),
      colorContainer: Color(0xff205026),
      onColorContainer: Color(0xffbaf0b7),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff9ed49c),
      onColor: Color(0xff053911),
      colorContainer: Color(0xff205026),
      onColorContainer: Color(0xffbaf0b7),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff9ed49c),
      onColor: Color(0xff053911),
      colorContainer: Color(0xff205026),
      onColorContainer: Color(0xffbaf0b7),
    ),
  );

  /// Blue
  static const blue = ExtendedColor(
    seed: Color(0xff1976d2),
    value: Color(0xff1976d2),
    light: ColorFamily(
      color: Color(0xff3c6090),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffd4e3ff),
      onColorContainer: Color(0xff001c3a),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff3c6090),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffd4e3ff),
      onColorContainer: Color(0xff001c3a),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff3c6090),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffd4e3ff),
      onColorContainer: Color(0xff001c3a),
    ),
    dark: ColorFamily(
      color: Color(0xffa6c8ff),
      onColor: Color(0xff01315e),
      colorContainer: Color(0xff224876),
      onColorContainer: Color(0xffd4e3ff),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffa6c8ff),
      onColor: Color(0xff01315e),
      colorContainer: Color(0xff224876),
      onColorContainer: Color(0xffd4e3ff),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffa6c8ff),
      onColor: Color(0xff01315e),
      colorContainer: Color(0xff224876),
      onColorContainer: Color(0xffd4e3ff),
    ),
  );

  /// Yellow
  static const yellow = ExtendedColor(
    seed: Color(0xffffc107),
    value: Color(0xffffc107),
    light: ColorFamily(
      color: Color(0xff775a0b),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdf9e),
      onColorContainer: Color(0xff261a00),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff775a0b),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdf9e),
      onColorContainer: Color(0xff261a00),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff775a0b),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdf9e),
      onColorContainer: Color(0xff261a00),
    ),
    dark: ColorFamily(
      color: Color(0xffe9c16c),
      onColor: Color(0xff3f2e00),
      colorContainer: Color(0xff5b4300),
      onColorContainer: Color(0xffffdf9e),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffe9c16c),
      onColor: Color(0xff3f2e00),
      colorContainer: Color(0xff5b4300),
      onColorContainer: Color(0xffffdf9e),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffe9c16c),
      onColor: Color(0xff3f2e00),
      colorContainer: Color(0xff5b4300),
      onColorContainer: Color(0xffffdf9e),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        green,
        blue,
        yellow,
      ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

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
