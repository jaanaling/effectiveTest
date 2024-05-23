// ignore_for_file: non_constant_identifier_names

import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class SearchThemeText {
  TextStyle get hotTabTextStyle => AppTextStyles.text2.copyWith(
        color: AppColors.white,
      );
  TextStyle get popularRoutesTitleTextStyle => AppTextStyles.title3.copyWith(
        color: AppColors.white,
      );
  TextStyle get popularRoutesSubTitleTextStyle => AppTextStyles.text2.copyWith(
        color: AppColors.gray5,
      );
}

final _text = SearchThemeText();

final class SearchThemeColors {
  Color get hotTabIconColor => AppColors.white;
  Color get hotTabDifRouteContainerColor => AppColors.green;
  Color get hotTabAnywhereColor => AppColors.blue;
  Color get hotTabWeekendColor => AppColors.darkBlue;
  Color get hotTabHotTicketsColor => AppColors.red;
  Color get popularRoutesContainerColor => AppColors.gray2;
  Color get dividerColor => AppColors.gray4;
}

final _colors = SearchThemeColors();

class SearchTheme {
  SearchThemeColors get color => _colors;
  SearchThemeText get text => _text;
}

extension SearchStandartTheme on StandartTheme {
  SearchTheme get Search => SearchTheme();
}
