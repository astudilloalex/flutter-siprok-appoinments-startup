import 'package:flutter/material.dart';

/// Contains the primary colors of the app.
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  /// Define the [AppThemeColors] class.
  const AppThemeColors({
    required this.primary,
    this.secondary,
  });

  /// The primary color of the app.
  final Color primary;

  /// The secondary color of the app.
  final Color? secondary;

  @override
  ThemeExtension<AppThemeColors> copyWith({
    Color? primary,
    Color? secondary,
  }) {
    return AppThemeColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  ThemeExtension<AppThemeColors> lerp(
    ThemeExtension<AppThemeColors>? other,
    double t,
  ) {
    if (other is! AppThemeColors) return this;
    return AppThemeColors(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      secondary: Color.lerp(secondary, other.secondary, t),
    );
  }
}
