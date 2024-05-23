import 'package:effective_test/utils/ext/format_number.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Price {
  final String value;

  Price({
    required this.value,
  });

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      value: formatNumber(json['value'] as int),
    );
  }
}
