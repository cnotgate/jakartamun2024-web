import 'package:flutter/material.dart';

const error = Color(0xFFB23727);

CustomColors lightCustomColors = const CustomColors(
  sourceError: Color(0xFFB23727),
  error: Color(0xFFAC3323),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD4),
  onErrorContainer: Color(0xFF400100),
);

CustomColors darkCustomColors = const CustomColors(
  sourceError: Color(0xFFB23727),
  error: Color(0xFFFFB4A7),
  onError: Color(0xFF680200),
  errorContainer: Color(0xFF8B1A0E),
  onErrorContainer: Color(0xFFFFDAD4),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceError,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
  });

  final Color? sourceError;
  final Color? error;
  final Color? onError;
  final Color? errorContainer;
  final Color? onErrorContainer;

  @override
  CustomColors copyWith({
    Color? sourceError,
    Color? error,
    Color? onError,
    Color? errorContainer,
    Color? onErrorContainer,
  }) {
    return CustomColors(
      sourceError: sourceError ?? this.sourceError,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      errorContainer: errorContainer ?? this.errorContainer,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceError: Color.lerp(sourceError, other.sourceError, t),
      error: Color.lerp(error, other.error, t),
      onError: Color.lerp(onError, other.onError, t),
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t),
      onErrorContainer: Color.lerp(onErrorContainer, other.onErrorContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith();
  }
}
