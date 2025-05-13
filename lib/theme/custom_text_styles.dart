import 'package:flutter/material.dart';

@immutable
class CustomTextStyles extends ThemeExtension<CustomTextStyles>{
  final TextStyle? headingExtraLarge;
  final TextStyle? headingExtraSmall;

  const CustomTextStyles({
    this.headingExtraLarge,
    this.headingExtraSmall,
  });

  @override
  CustomTextStyles copyWith({
    TextStyle? headingExtraLarge,
    TextStyle? headingExtraSmall,
  }) {
    return CustomTextStyles(
      headingExtraLarge: headingExtraLarge ?? this.headingExtraLarge,
      headingExtraSmall: headingExtraSmall ?? this.headingExtraSmall,
    );
  }

  @override
  CustomTextStyles lerp(ThemeExtension<CustomTextStyles>? other, double t) {
    if (other is! CustomTextStyles) return this;
     return CustomTextStyles(
      headingExtraLarge: TextStyle.lerp(headingExtraLarge, other.headingExtraLarge, t),
      headingExtraSmall: TextStyle.lerp(headingExtraSmall, other.headingExtraSmall, t),
    );
  }
}