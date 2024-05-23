import 'package:dio/dio.dart';
import 'package:effective_test/features/main/models/offers_model.dart';
import 'package:effective_test/utils/api/api.dart';
import 'package:effective_test/utils/models/price.dart';
import 'package:logger/logger.dart';

final logger = Logger();

Future<List<OffersModel>> getOffers() {
  final dio = Dio();
  final client = RestClient(dio);
  try {
    final offers = client.getOffers();
    offers.then((it) => logger.i('Get data: ${it.offers.length}'));
    return offers.then((it) => it.offers);
  } catch (e) {
    logger.e(e);
    return getMockOffers();
  }
}

Future<List<OffersModel>> getMockOffers() async {
  return [
    OffersModel(
      id: 1,
      title: 'Die Antwoord',
      town: 'Будапешт',
      price: Price(value: '5 000'),
    ),
    OffersModel(
      id: 2,
      title: 'Die Antwoord',
      town: 'Будапешт',
      price: Price(value: '5 000'),
    ),
    OffersModel(
      id: 2,
      title: 'Die Antwoord',
      town: 'Будапешт',
      price: Price(value: '5 000'),
    ),
  ];
}
