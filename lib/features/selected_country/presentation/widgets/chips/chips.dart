import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/features/selected_country/presentation/widgets/chips/component/chips_component.dart';
import 'package:effective_test/features/selected_country/theme/theme.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/arrival_util.dart';
import 'package:effective_test/utils/ext/format_date.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:effective_test/utils/ext/split_date.dart';
import 'package:effective_test/utils/popups/selected_date/show_selected_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().SelectedCountry;

class Chips extends StatefulWidget {
  const Chips({super.key});

  @override
  State<Chips> createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  String backButton = LocaleKeys.back.tr();
  String arrivalButton = formatDate(DateTime.now());

  void _selectDateforButtonBack(BuildContext context) {
    showSelectDatePicker(context).then((value) {
      if (value != null) {
        setState(() {
          backButton = formatDate(value);
        });
      }
    });
  }

  void _selectDateforArrivalButton(BuildContext context) {
    showSelectDatePicker(context).then((value) {
      if (value != null) {
        setState(() {
          arrivalButton = formatDate(value);
          ArrivalUtil.date = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ChipsComponent(
            onTap: () => _selectDateforButtonBack(context),
            title: backButton != LocaleKeys.back.tr()
                ? splitDate(backButton)[0]
                : backButton,
            subtitle: backButton != LocaleKeys.back.tr()
                ? splitDate(backButton)[1]
                : null,
            icon: backButton == LocaleKeys.back.tr()
                ? IconProvider.plus.buildIconUrl()
                : null,
            iconColor: _feature.color.chipIconFunctionalColor,
          ),
          const Gap(8),
          ChipsComponent(
            onTap: () => _selectDateforArrivalButton(context),
            title: splitDate(arrivalButton)[0],
            subtitle: splitDate(arrivalButton)[1],
          ),
          const Gap(8),
          ChipsComponent(
            onTap: () {},
            title: '1, эконом',
            icon: IconProvider.human.buildIconUrl(),
            iconColor: _feature.color.chipIconUnfunctionalColor,
          ),
          const Gap(8),
          ChipsComponent(
            onTap: () {},
            title: 'фильтры',
            icon: IconProvider.filter.buildIconUrl(),
            iconColor: _feature.color.chipIconFunctionalColor,
          ),
        ],
      ),
    );
  }
}
