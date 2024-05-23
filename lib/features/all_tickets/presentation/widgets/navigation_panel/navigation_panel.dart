import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/features/all_tickets/presentation/widgets/navigation_panel/components/navigation_panel_item.dart';
import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:gap/gap.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';

var _feature = StandartTheme().AllTickets;

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _feature.color.navigationPanelColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationPanelItem(
                iconUrl: IconProvider.filter.buildIconUrl(),
                label: LocaleKeys.filter.tr(),
              ),
              const Gap(16),
              NavigationPanelItem(
                iconUrl: IconProvider.chart.buildIconUrl(),
                label: LocaleKeys.price_chart.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
