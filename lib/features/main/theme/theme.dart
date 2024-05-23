// ignore_for_file: non_constant_identifier_names

import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class MainThemeText {
  TextStyle get titleTextStyle => AppTextStyles.title1.copyWith(
        color: AppColors.gray7,
      );
  TextStyle get musicallyTitleTextStyle => AppTextStyles.title3.copyWith(
        color: AppColors.white,
      );
  TextStyle get musicallySubtitleTextStyle => AppTextStyles.text2.copyWith(
        color: AppColors.white,
      );
}

final _text = MainThemeText();

final class MainThemeColors {
  Color get loaderShimmerColor => AppColors.gray1;
  Color get loaderBackgroungColor => AppColors.gray2;
  Color get pageColor => AppColors.black;
  Color get routeFieldsContainerColor => AppColors.gray2;
  Color get buttonContainerColor => AppColors.gray2;
  Color get leadingIconRouteFieldsColor => AppColors.black;
  Color get leadingIconMusicallyColor => AppColors.gray6;
}

final _colors = MainThemeColors();

class MainTheme {
  MainThemeColors get color => _colors;
  MainThemeText get text => _text;
}

extension MainStandartTheme on StandartTheme {
  MainTheme get Main => MainTheme();
}
