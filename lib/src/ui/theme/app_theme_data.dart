import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:siprok_appointments/src/ui/theme/app_theme_colors.dart';

/// Contains information about theme data (light and dark).
class AppThemeData {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  const AppThemeData._();

  /// Returns the dark theme.
  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      pageTransitionsTheme: const _NoTransitionsOnWeb(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  /// Returns the light theme in the app.
  static ThemeData get light {
    const AppThemeColors colors = AppThemeColors(
      primary: Color(0xFF05141F),
      secondary: Color(0xFFFFFFFF),
    );
    return ThemeData.light().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.secondary,
          minimumSize: const Size(100.0, 48.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
      extensions: <ThemeExtension<dynamic>>[colors],
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      pageTransitionsTheme: const _NoTransitionsOnWeb(),
      primaryColor: colors.primary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}

/// Overwrite class to remove transitions on the web.
class _NoTransitionsOnWeb extends PageTransitionsTheme {
  const _NoTransitionsOnWeb();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (kIsWeb) return child;
    return super.buildTransitions(
      route,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}
