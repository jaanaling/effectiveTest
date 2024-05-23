import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/calculate_time_difference.dart';
import 'package:flutter/material.dart';

var _feature = StandartTheme().AllTickets;

class FlightDetails extends StatelessWidget {
  final DateTime departureTime;
  final DateTime arrivalTime;
  final bool hasTransfer;

  const FlightDetails({
    super.key,
    required this.departureTime,
    required this.arrivalTime,
    required this.hasTransfer,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: _feature.text.flightDetailsTextStyle,
        children: [
          TextSpan(
            text: calculateTimeDifference(
              departureTime,
              arrivalTime,
            ),
          ),
          if (hasTransfer)
            TextSpan(
              text: ' / ',
              style: _feature.text.slashTextStyle,
            ),
          if (hasTransfer)
            TextSpan(
              text: LocaleKeys.direct.tr(),
            ),
        ],
      ),
    );
  }
}
