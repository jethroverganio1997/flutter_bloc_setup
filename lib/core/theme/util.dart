import 'package:flutter/material.dart';

TextTheme createTextTheme(BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme = baseTextTheme.apply(fontFamily: bodyFontString);
  TextTheme displayTextTheme = baseTextTheme.apply(fontFamily: displayFontString);
  TextTheme textTheme = displayTextTheme
      .copyWith(
        displayLarge: displayTextTheme.displayLarge?.copyWith(fontSize: 57),
        displayMedium: displayTextTheme.displayMedium?.copyWith(fontSize: 45),
        displaySmall: displayTextTheme.displaySmall?.copyWith(fontSize: 36),
        headlineLarge: displayTextTheme.headlineLarge?.copyWith(fontSize: 32),
        headlineMedium: displayTextTheme.headlineMedium?.copyWith(fontSize: 28),
        headlineSmall: displayTextTheme.headlineSmall?.copyWith(fontSize: 24),
        titleLarge: bodyTextTheme.titleLarge?.copyWith(fontSize: 22),
        titleMedium: bodyTextTheme.titleMedium?.copyWith(fontSize: 16),
        titleSmall: bodyTextTheme.titleSmall?.copyWith(fontSize: 14),
        bodyLarge: bodyTextTheme.bodyLarge?.copyWith(fontSize: 16),
        bodyMedium: bodyTextTheme.bodyMedium?.copyWith(fontSize: 14),
        bodySmall: bodyTextTheme.bodySmall?.copyWith(fontSize: 12),
        labelLarge: bodyTextTheme.labelLarge?.copyWith(fontSize: 14),
        labelMedium: bodyTextTheme.labelMedium?.copyWith(fontSize: 12),
        labelSmall: bodyTextTheme.labelSmall?.copyWith(fontSize: 11),
      );
  return textTheme;
}
