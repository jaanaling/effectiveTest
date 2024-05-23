import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/features/selected_country/bloc/selected_country_bloc/selected_country_bloc.dart';
import 'package:effective_test/features/selected_country/presentation/widgets/chips/chips.dart';
import 'package:effective_test/features/selected_country/presentation/widgets/direct_flights/direct_flights.dart';
import 'package:effective_test/features/selected_country/presentation/widgets/notification_switch/notification_switch.dart';
import 'package:effective_test/features/selected_country/presentation/widgets/selected_country_loader/selected_country_loader.dart';
import 'package:effective_test/features/selected_country/theme/theme.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/router/routes.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/arrival_util.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:effective_test/utils/ui_kit/app_button/widget/app_button.dart';
import 'package:effective_test/utils/ui_kit/routes_text_fields/widget/routes_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

var _feature = StandartTheme().SelectedCountry;

class SelectedCountryScreen extends StatelessWidget {
  final String countryName;

  const SelectedCountryScreen({
    super.key,
    required this.countryName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectedCountryBloc()..add(GetTicketOffersEvent()),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Gap(47),
            RoutesTextFields(
              needSuffixIconTextFieldFrom: true,
              needSuffixIconTextFieldTo: true,
              leadingIcon: GestureDetector(
                onTap: () => context.pop(context),
                child: SvgPicture.asset(
                  IconProvider.leftArrow.buildIconUrl(),
                ),
              ),
            ),
            const Gap(13),
            const Chips(),
            const Gap(12),
            BlocBuilder<SelectedCountryBloc, SelectedCountryState>(
              builder: (context, state) => state is GetTicketOffersState
                  ? DirectFlights(ticketOffers: state.ticketOffers)
                  : const SelectedCountryLoader(),
            ),
            const Gap(12),
            AppButton(
              label: LocaleKeys.view_all_tickets.tr(),
              color: _feature.color.viewAllTicketsButtonColor,
              onTap: () => context.push(
                Routes.allTickets.route,
                extra: '${ArrivalUtil.getDateString()}, 1 пассажир',
              ),
            ),
            const Gap(24),
            const NotificationSwitch(),
          ],
        ),
      ),
    );
  }
}
