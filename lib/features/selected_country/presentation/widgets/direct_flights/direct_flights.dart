import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/features/selected_country/model/tickets_offers_model.dart';
import 'package:effective_test/features/selected_country/presentation/widgets/direct_flights/component/direct_flights_component.dart';
import 'package:effective_test/features/selected_country/theme/theme.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().SelectedCountry;

class DirectFlights extends StatelessWidget {
  final List<TicketOffersModel> ticketOffers;
  
  const DirectFlights({
    super.key,
    required this.ticketOffers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: _feature.color.routesListContainerColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.straight_rails.tr(),
            style: _feature.text.routesListHeaderTextStyle,
          ),
          const Gap(8),
          DirectFlightComponent(
            color: _feature.color.routeCircleFirstColor,
            title: ticketOffers[0].title,
            timeRange: ticketOffers[0].timeRange.join(', '),
            price: ticketOffers[0].price.value,
          ),
          DirectFlightComponent(
            color: _feature.color.routeCircleSecondColor,
            title: ticketOffers[1].title,
            timeRange: ticketOffers[1].timeRange.join(', '),
            price: ticketOffers[1].price.value,
          ),
          DirectFlightComponent(
            color: _feature.color.routeCircleThirdColor,
            title: ticketOffers[2].title,
            timeRange: ticketOffers[2].timeRange.join(', '),
            price: ticketOffers[2].price.value,
          ),
          const Gap(8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 11,
            ),
            child: Center(
              child: Text(
                LocaleKeys.show_all.tr(),
                style: _feature.text.viewAllButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
