import 'package:flutter/material.dart';
import 'app_colors.dart';

/// List of the Customers text styles.
class AppTextStyles {
  static const FontWeight _semiBold = FontWeight.w600;
  static const FontWeight _large = FontWeight.w900;
  static const FontWeight _normal = FontWeight.w500;
  static const FontWeight _bold = FontWeight.bold;

  /// Text label of home item card.
  static const TextStyle title =
      TextStyle(fontSize: 25, fontWeight: _bold, color: AppColors.blue);

  /// Text label of features.
  static const TextStyle stepText =
      TextStyle(fontSize: 20, fontWeight: _large, color: AppColors.kBlackColor);

  /// Text label of carousel header.
  static const TextStyle carouselTitle =
      TextStyle(fontSize: 25, fontWeight: _semiBold, color: AppColors.kWhite70);

  /// Simple text.
  static const TextStyle simpleBuildWallText =
      TextStyle(fontSize: 18, fontWeight: _normal, color: AppColors.kWhite70);

  /// button of simple calculator.
  static const TextStyle textStyle = TextStyle(
      fontSize: 15, wordSpacing: 2, height: 1.5, color: AppColors.kWhite70);

  /// button of simple calculator.
  static const TextStyle urgentText = TextStyle(
      fontSize: 15, wordSpacing: 2, height: 1.5, color: AppColors.kRedColor);

  /// button of simple calculator.
  static const TextStyle importantText =
      TextStyle(fontSize: 13, fontWeight: _bold, color: AppColors.kBlue300);

  /// The table title style.
  static const TextStyle tableTitleStyle =
      TextStyle(color: AppColors.kWhite70, fontSize: 20, fontWeight: _normal);

  /// The table row style.
  static const TextStyle tableRowStyle = TextStyle(
      color: AppColors.kBlackColor, fontSize: 13, fontWeight: _normal);
}
