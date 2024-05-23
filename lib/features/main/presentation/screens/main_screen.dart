import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/features/main/bloc/main_bloc/main_bloc.dart';
import 'package:effective_test/features/main/presentation/widgets/main_loader/main_loader.dart';
import 'package:effective_test/features/main/presentation/widgets/offers_list_view/offers_list_view.dart';
import 'package:effective_test/features/main/theme/theme.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:effective_test/utils/ui_kit/app_button/widget/app_button.dart';
import 'package:effective_test/utils/ui_kit/routes_text_fields/widget/routes_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().Main;

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc()..add(GetOffersEvent()),
      child: ColoredBox(
        color: _feature.color.pageColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(28),
                Center(
                  child: Text(
                    LocaleKeys.search_for_cheap_flights.tr(),
                    style: _feature.text.titleTextStyle,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const Gap(36),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: _feature.color.routeFieldsContainerColor,
                  ),
                  child: RoutesTextFields(
                    leadingIcon: SvgPicture.asset(
                      IconProvider.search.buildIconUrl(),
                      colorFilter: ColorFilter.mode(
                        _feature.color.leadingIconRouteFieldsColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                const Gap(32),
                Text(
                  LocaleKeys.fly_away_musically.tr(),
                  style: _feature.text.titleTextStyle,
                ),
                const Gap(25),
                BlocBuilder<MainBloc, MainState>(
                  builder: (context, state) {
                    return state is GetOffersState
                        ? OffersListView(offers: state.offers)
                        : const MainLoader();
                  },
                ),
                const Gap(16),
                AppButton(
                  label: LocaleKeys.show_all_places.tr(),
                  color: _feature.color.buttonContainerColor,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
