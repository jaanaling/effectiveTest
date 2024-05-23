import 'package:easy_localization/easy_localization.dart';

String formatDate(DateTime date) {
  final String pattern = tr('date_format');
  final DateFormat formatter = DateFormat(pattern, 'ru');
  return formatter.format(date);
}
