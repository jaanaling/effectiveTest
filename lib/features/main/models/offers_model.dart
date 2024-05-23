import 'package:effective_test/utils/models/price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offers_model.g.dart';

@JsonSerializable()
class OffersModel {
  final int id;
  final String title;
  final String town;
  final Price price;

  OffersModel({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  factory OffersModel.fromJson(Map<String, dynamic> json) =>
      _$OffersModelFromJson(json);

  Map<String, dynamic> toJson() => _$OffersModelToJson(this);
}

@JsonSerializable()
class OffersModelData {
  final List<OffersModel> offers;

  OffersModelData({
    required this.offers,
  });

  factory OffersModelData.fromJson(Map<String, dynamic> json) =>
      _$OffersModelDataFromJson(json);
}
