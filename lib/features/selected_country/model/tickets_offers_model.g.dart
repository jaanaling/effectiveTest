// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketOffersModel _$TicketOffersModelFromJson(Map<String, dynamic> json) =>
    TicketOffersModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      timeRange: (json['time_range'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketOffersModelToJson(TicketOffersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time_range': instance.timeRange,
      'price': instance.price,
    };

TicketsOffersModelData _$TicketsOffersModelDataFromJson(
  Map<String, dynamic> json,
) =>
    TicketsOffersModelData(
      ticketsOffers: (json['tickets_offers'] as List<dynamic>)
          .map((e) => TicketOffersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketsOffersModelDataToJson(
  TicketsOffersModelData instance,
) =>
    <String, dynamic>{
      'tickets_offers': instance.ticketsOffers,
    };
