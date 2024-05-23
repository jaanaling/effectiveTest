import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/features/selected_country/theme/theme.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().SelectedCountry;

class NotificationSwitch extends StatefulWidget {
  const NotificationSwitch({super.key});

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  bool isSwithed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 8, 11),
      decoration: BoxDecoration(
        color: _feature.color.switchContainerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            IconProvider.subscriptions.buildIconUrl(),
            colorFilter: ColorFilter.mode(
              _feature.color.bellIconColor,
              BlendMode.srcIn,
            ),
          ),
          const Gap(8),
          Text(
            LocaleKeys.subscription_to_the_price.tr(),
            style: _feature.text.switchTextStyle,
          ),
          const Spacer(),
          Switch(
            value: isSwithed,
            onChanged: (value) {
              setState(() {
                isSwithed = value;
              });
            },
            activeColor: _feature.color.switchBackgroundActiveColor,
            activeTrackColor: _feature.color.switchActiveColor,
          ),
        ],
      ),
    );
  }
}
