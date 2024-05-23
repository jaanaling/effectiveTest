import 'package:dio/dio.dart';
import 'package:effective_test/features/selected_country/model/tickets_offers_model.dart';
import 'package:effective_test/utils/api/api.dart';
import 'package:effective_test/utils/ext/format_number.dart';
import 'package:effective_test/utils/models/price.dart';
import 'package:logger/logger.dart';

final logger = Logger();

Future<List<TicketOffersModel>> getTicketOffers() {
  final dio = Dio();
  final client = RestClient(dio);
  try {
    final offers = client.getTicketsOffers();
    offers.then((it) => logger.i('Get data: ${it.ticketsOffers.length}'));
    return offers.then((it) => it.ticketsOffers);
  } catch (e) {
    logger.e(e);
    return getMockTicketOffers();
  }
}

Future<List<TicketOffersModel>> getMockTicketOffers() async {
  return [
    TicketOffersModel(
      id: 1,
      title: 'Уральские авиалинии',
      timeRange: [
        '07:00',
        '09:10',
        '10:00',
        '11:30',
        '14:15',
        '19:10',
        '21:00',
        '23:30',
      ],
      price: Price(value: formatNumber(3999)),
    ),
    TicketOffersModel(
      id: 10,
      title: 'Победа',
      timeRange: [
        '09:10',
        '21:00',
      ],
      price: Price(value: formatNumber(3999)),
    ),
    TicketOffersModel(
      id: 30,
      title: 'NordStar',
      timeRange: [
        '07:00',
      ],
      price: Price(value: formatNumber(3999)),
    ),
  ];
}
