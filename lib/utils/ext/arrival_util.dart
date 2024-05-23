import 'package:easy_localization/easy_localization.dart';

class ArrivalUtil {
  static DateTime date = DateTime.now();

 static String getDateString() => DateFormat('d MMMM', 'ru').format(date);
}
