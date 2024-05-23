import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/router/routes.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/global_controller.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:effective_test/utils/ext/images_provider.dart';
import 'package:effective_test/utils/popups/search_popup/components/hot_tab.dart';
import 'package:effective_test/utils/popups/search_popup/components/popular_route.dart';
import 'package:effective_test/utils/popups/search_popup/theme/theme.dart';
import 'package:effective_test/utils/ui_kit/routes_text_fields/widget/routes_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

var _feature = StandartTheme().Search;

class SearchPopup extends StatelessWidget {
  const SearchPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const RoutesTextFields(
            needPrefixIconTextFieldFrom: true,
            needPrefixIconTextFieldTo: true,
            needSuffixIconTextFieldTo: true,
          ),
          const Gap(24),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HotTab(
                onTap: () {
                  GlobalController.toController.text = '';
                  Navigator.of(context).pop();
                  context.push(Routes.unknown.path);
                },
                color: _feature.color.hotTabDifRouteContainerColor,
                icon: IconProvider.routes.buildIconUrl(),
                text: LocaleKeys.a_difficult_route.tr(),
              ),
              const Gap(16),
              HotTab(
                onTap: () => GlobalController.toController.text =
                    LocaleKeys.anywhere.tr(),
                color: _feature.color.hotTabAnywhereColor,
                icon: IconProvider.ball.buildIconUrl(),
                text: LocaleKeys.anywhere.tr(),
              ),
              const Gap(16),
              HotTab(
                onTap: () {
                  GlobalController.toController.text = '';
                  Navigator.of(context).pop();
                  context.push(Routes.unknown.path);
                },
                color: _feature.color.hotTabWeekendColor,
                icon: IconProvider.calendar.buildIconUrl(),
                text: LocaleKeys.weekend.tr(),
              ),
              const Gap(16),
              HotTab(
                onTap: () {
                  GlobalController.toController.text = '';
                  Navigator.of(context).pop();
                  context.push(Routes.unknown.path);
                },
                color: _feature.color.hotTabHotTicketsColor,
                icon: IconProvider.fire.buildIconUrl(),
                text: LocaleKeys.hot_tickets.tr(),
              ),
            ],
          ),
          const Gap(30),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
            decoration: BoxDecoration(
              color: _feature.color.popularRoutesContainerColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                PopularRoute(
                  image: ImagesProvider.stambul.buildImageUrl(),
                  title: LocaleKeys.stambul.tr(),
                  onTap: () {
                    Navigator.of(context).pop();
                    GlobalController.toController.text = 'Стамбул';
                  },
                ),
                const Gap(16),
                PopularRoute(
                  image: ImagesProvider.sochy.buildImageUrl(),
                  title: LocaleKeys.sochy.tr(),
                  onTap: () {
                    Navigator.of(context).pop();
                    GlobalController.toController.text = 'Сочи';
                  },
                ),
                const Gap(16),
                PopularRoute(
                  image: ImagesProvider.phuket.buildImageUrl(),
                  title: LocaleKeys.phuket.tr(),
                  onTap: () {
                    Navigator.of(context).pop();
                    GlobalController.toController.text = 'Пхукет';
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
