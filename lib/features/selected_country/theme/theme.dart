import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class SelectedCountryThemeText {
  TextStyle get chipTitleTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.white,
      );
  TextStyle get chipSubtitleTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.gray5,
      );
  TextStyle get routesPriceTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.blue,
      );
  TextStyle get routesListHeaderTextStyle => AppTextStyles.title2.copyWith(
        color: AppColors.white,
      );
  TextStyle get routesTitleTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.white,
      );
  TextStyle get routesTimeTextStyle => AppTextStyles.text2.copyWith(
        color: AppColors.white,
      );
  TextStyle get viewAllButtonTextStyle => AppTextStyles.buttonText1.copyWith(
        color: AppColors.blue,
      );
  TextStyle get switchTextStyle => AppTextStyles.buttonText1.copyWith(
        color: AppColors.white,
      );
  TextStyle get viewAllTicketsButtonTextStyle =>
      AppTextStyles.buttonText1.copyWith(
        color: AppColors.white,
        fontStyle: FontStyle.italic,
      );
}

final _text = SelectedCountryThemeText();

final class SelectedCountryThemeColors {
  Color get loaderShimmerColor => AppColors.gray1;
  Color get loaderBackgroungColor => AppColors.gray2;
  Color get chipContainerColor => AppColors.gray2;
  Color get routesListContainerColor => AppColors.gray1;
  Color get switchContainerColor => AppColors.gray3;
  Color get dividerColor => AppColors.gray4;
  Color get chipIconFunctionalColor => AppColors.gray7;
  Color get chipIconUnfunctionalColor => AppColors.gray5;
  Color get routeCircleFirstColor => AppColors.red;
  Color get routeCircleSecondColor => AppColors.blue;
  Color get routeCircleThirdColor => AppColors.white;
  Color get arrowIconColor => AppColors.blue;
  Color get viewAllTicketsButtonColor => AppColors.blue;
  Color get bellIconColor => AppColors.blue;
  Color get switchActiveColor => AppColors.blue;
  Color get switchBackgroundActiveColor => AppColors.blue.withOpacity(0.5);
}

final _colors = SelectedCountryThemeColors();

class SelectedCountryTheme {
  SelectedCountryThemeColors get color => _colors;
  SelectedCountryThemeText get text => _text;
}

extension SelectedCountryStandartTheme on StandartTheme {
  // ignore: non_constant_identifier_names
  SelectedCountryTheme get SelectedCountry => SelectedCountryTheme();
}
