import 'dart:ui';

import 'package:flutter/material.dart';

abstract class VendorSizeExtension {
  VendorSizeExtension({required this.iconSize});

  final double iconSize;
}

class SizeExtension1 extends ThemeExtension<SizeExtension1> implements VendorSizeExtension {
  const SizeExtension1._({required this.iconSize});

  static const _iconSize = 24.0;

  static const instance = SizeExtension1._(
    iconSize: _iconSize,
  );

  @override
  final double iconSize;

  @override
  ThemeExtension<SizeExtension1> copyWith({
    double? buttonBorderRadius,
  }) =>
      SizeExtension1._(
        iconSize: buttonBorderRadius ?? iconSize,
      );

  // Controls how the properties change on theme changes
  @override
  ThemeExtension<SizeExtension1> lerp(
      ThemeExtension<SizeExtension1>? other,
      double t,
      ) {
    if (other is! SizeExtension1) return this;

    return SizeExtension1._(
      iconSize:
      lerpDouble(iconSize, other.iconSize, t) ?? 0,
    );
  }
}

// other radius -------------

class SizeExtension2 extends ThemeExtension<SizeExtension1> implements VendorSizeExtension {
  const SizeExtension2._({required this.iconSize});

  static const _iconSize = 12.0;

  static const instance = SizeExtension1._(
    iconSize: _iconSize,
  );

  @override
  final double iconSize;

  @override
  ThemeExtension<SizeExtension1> copyWith({
    double? buttonBorderRadius,
  }) =>
      SizeExtension1._(
        iconSize: buttonBorderRadius ?? iconSize,
      );

  // Controls how the properties change on theme changes
  @override
  ThemeExtension<SizeExtension1> lerp(
      ThemeExtension<SizeExtension1>? other,
      double t,
      ) {
    if (other is! SizeExtension1) return this;

    return SizeExtension1._(
      iconSize:
      lerpDouble(iconSize, other.iconSize, t) ?? 0,
    );
  }
}
