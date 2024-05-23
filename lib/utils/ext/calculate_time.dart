import 'package:easy_localization/easy_localization.dart';

String calculateTime(DateTime date) {
  final String time = DateFormat.Hm().format(date);

  return time;
}
