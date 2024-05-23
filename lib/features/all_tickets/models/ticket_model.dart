import 'package:effective_test/utils/models/price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_model.g.dart';

@JsonSerializable()
class AllTicketsModel {
  List<TicketModel> tickets;

  AllTicketsModel({required this.tickets});

  factory AllTicketsModel.fromJson(Map<String, dynamic> json) =>
      _$AllTicketsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AllTicketsModelToJson(this);
}

@JsonSerializable()
class TicketModel {
  final int id;
  final String? badge;
  final Price price;
  final Location departure;
  final Location arrival;
  @JsonKey(name: 'has_transfer')
  final bool hasTransfer;

  TicketModel({
    required this.id,
    this.badge,
    required this.price,
    required this.departure,
    required this.arrival,
    required this.hasTransfer,
  });

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  Map<String, dynamic> toJson() => _$TicketModelToJson(this);
}

@JsonSerializable()
class Location {
  final String town;
  final DateTime date;
  final String airport;

  Location({
    required this.town,
    required this.date,
    required this.airport,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
      
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
