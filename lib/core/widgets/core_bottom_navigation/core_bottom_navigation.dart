import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/core/theme/theme.dart';
import 'package:effective_test/core/widgets/core_bottom_navigation/components/bottom_navigation_item.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/router/routes.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:effective_test/theme/theme.dart';

var _feature = StandartTheme().Core;

class CoreBottomNavigation extends StatelessWidget {
  const CoreBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String currentPage = GoRouterState.of(context).fullPath ?? '/unknown';
    return ColoredBox(
      color: _feature.color.bottomBarColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              decoration: BoxDecoration(
                color: _feature.color.bottomBarSepareteColor,
              ),
            ),
            const Gap(6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomNavigationItem(
                  onPressed: () => context.go(Routes.main.path),
                  isSelected: currentPage.contains(Routes.main.route),
                  icon: IconProvider.airTickets.buildIconUrl(),
                  label: LocaleKeys.air_tickets.tr(),
                ),
                BottomNavigationItem(
                  onPressed: () => context.go(Routes.hotels.path),
                  isSelected: currentPage == Routes.hotels.path,
                  icon: IconProvider.hotels.buildIconUrl(),
                  label: LocaleKeys.hotels.tr(),
                ),
                BottomNavigationItem(
                  onPressed: () => context.go(Routes.short.path),
                  isSelected: currentPage == Routes.short.path,
                  icon: IconProvider.short.buildIconUrl(),
                  label: LocaleKeys.short.tr(),
                ),
                BottomNavigationItem(
                  onPressed: () => context.go(Routes.subscriptions.path),
                  isSelected: currentPage == Routes.subscriptions.path,
                  icon: IconProvider.subscriptions.buildIconUrl(),
                  label: LocaleKeys.subscriptions.tr(),
                ),
                BottomNavigationItem(
                  onPressed: () => context.go(Routes.profile.path),
                  isSelected: currentPage == Routes.profile.path,
                  icon: IconProvider.profile.buildIconUrl(),
                  label: LocaleKeys.profile.tr(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
