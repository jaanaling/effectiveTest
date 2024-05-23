// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTicketsModel _$AllTicketsModelFromJson(Map<String, dynamic> json) =>
    AllTicketsModel(
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllTicketsModelToJson(AllTicketsModel instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
    };

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) => TicketModel(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      departure: Location.fromJson(json['departure'] as Map<String, dynamic>),
      arrival: Location.fromJson(json['arrival'] as Map<String, dynamic>),
      hasTransfer: json['has_transfer'] as bool,
    );

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'has_transfer': instance.hasTransfer,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      town: json['town'] as String,
      date: DateTime.parse(json['date'] as String),
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'town': instance.town,
      'date': instance.date.toIso8601String(),
      'airport': instance.airport,
    };
