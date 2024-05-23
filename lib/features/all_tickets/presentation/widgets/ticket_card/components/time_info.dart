import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/calculate_time.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().AllTickets;

class TimeInfo extends StatelessWidget {
  final DateTime date;
  final String airport;
  const TimeInfo({
    super.key,
    required this.date,
    required this.airport,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          calculateTime(date),
          style: _feature.text.timeTextStyle,
        ),
        const Gap(4),
        Text(
          airport,
          style: _feature.text.airportTextStyle,
        ),
      ],
    );
  }
}
