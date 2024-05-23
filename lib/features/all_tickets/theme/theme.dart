// ignore_for_file: non_constant_identifier_names

import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class AllTicketsThemeText {
  TextStyle get titleTextStyle => AppTextStyles.title1.copyWith(
        color: AppColors.white,
      );
  TextStyle get airportTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.gray6,
      );
  TextStyle get timeTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.white,
      );
  TextStyle get flightDetailsTextStyle => AppTextStyles.text2.copyWith(
        color: AppColors.white,
      );
  TextStyle get slashTextStyle => AppTextStyles.text2.copyWith(
        color: AppColors.gray6,
      );
  TextStyle get badgeDetailsTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.white,
      );
  TextStyle get routeTextStyle => AppTextStyles.title3.copyWith(
        fontSize: 16,
        color: AppColors.white,
      );
  TextStyle get dateTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.gray6,
      );
  TextStyle get navigationPanelTextStyle => AppTextStyles.title4.copyWith(
        color: AppColors.white,
        fontWeight: FontWeight.w400,
      );
}

final _text = AllTicketsThemeText();

final class AllTicketsThemeColors {
  Color get loaderShimmerColor => AppColors.gray1;
  Color get loaderBackgroungColor => AppColors.gray2;
  Color get scaffoldColor => AppColors.black;
  Color get cardCircleColor => AppColors.red;
  Color get badgeColor => AppColors.blue;
  Color get backArrowColor => AppColors.blue;
  Color get dividerColor => AppColors.gray6;
  Color get cardColor => AppColors.gray1;
  Color get navigationBarColor => AppColors.gray1;
  Color get navigationPanelColor => AppColors.blue;
}

final _colors = AllTicketsThemeColors();

class AllTicketsTheme {
  AllTicketsThemeColors get color => _colors;
  AllTicketsThemeText get text => _text;
}

extension AllTicketsStandartTheme on StandartTheme {
  AllTicketsTheme get AllTickets => AllTicketsTheme();
}
