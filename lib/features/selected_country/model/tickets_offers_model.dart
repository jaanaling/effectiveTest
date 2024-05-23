import 'package:effective_test/utils/models/price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tickets_offers_model.g.dart';

@JsonSerializable()
class TicketOffersModel {
  int id;
  String title;
  @JsonKey(name: 'time_range')
  List<String> timeRange;
  Price price;

  TicketOffersModel({
    required this.id,
    required this.title,
    required this.timeRange,
    required this.price,
  });

  factory TicketOffersModel.fromJson(Map<String, dynamic> json) =>
      _$TicketOffersModelFromJson(json);

  Map<String, dynamic> toJson() => _$TicketOffersModelToJson(this);
}

@JsonSerializable()
class TicketsOffersModelData {
  @JsonKey(name: 'tickets_offers')
  List<TicketOffersModel> ticketsOffers;

  TicketsOffersModelData({required this.ticketsOffers});

  factory TicketsOffersModelData.fromJson(Map<String, dynamic> json) =>
      _$TicketsOffersModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsOffersModelDataToJson(this);
}
