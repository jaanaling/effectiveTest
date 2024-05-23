import 'package:easy_localization/easy_localization.dart';

String calculateTimeDifference(DateTime startDateTime, DateTime endDateTime) {
  final Duration difference = endDateTime.difference(startDateTime);
  final int hours = difference.inHours;
  final int minutes = difference.inMinutes.remainder(60);

  return tr(
    'in_transit',
    namedArgs: {'hours': hours.toString(), 'minutes': minutes.toString()},
  );
}
