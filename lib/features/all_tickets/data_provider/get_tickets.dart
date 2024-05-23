import 'package:dio/dio.dart';
import 'package:effective_test/utils/models/price.dart';
import 'package:logger/logger.dart';
import 'package:effective_test/utils/api/api.dart';

import 'package:effective_test/features/all_tickets/models/ticket_model.dart';

final logger = Logger();

Future<List<TicketModel>> getTickets() {
  final dio = Dio();
  final client = RestClient(dio);
  try {
    final tickets = client.getTickets();
    tickets.then((it) => logger.i(it));
    return tickets.then((it) => it.tickets);
  } catch (e) {
    logger.e(e);
    return getMockTickets();
  }
}

Future<List<TicketModel>> getMockTickets() async {
  return [
    TicketModel(
      id: 100,
      badge: 'Самый удобный',
      price: Price(value: '1999'),
      departure: Location(
        town: 'Москва',
        date: DateTime.parse('2024-02-23T03:15:00'),
        airport: 'VKO',
      ),
      arrival: Location(
        town: 'Сочи',
        date: DateTime.parse('2024-02-23T07:10:00'),
        airport: 'AER',
      ),
      hasTransfer: false,
    ),
    TicketModel(
      id: 101,
      price: Price(value: '9999'),
      departure: Location(
        town: 'Москва',
        date: DateTime.parse('2024-02-23T04:00:00'),
        airport: 'VKO',
      ),
      arrival: Location(
        town: 'Сочи',
        date: DateTime.parse('2024-02-23T08:30:00'),
        airport: 'AER',
      ),
      hasTransfer: false,
    ),
    TicketModel(
      id: 102,
      price: Price(value: '8500'),
      departure: Location(
        town: 'Москва',
        date: DateTime.parse('2024-02-23T15:00:00'),
        airport: 'VKO',
      ),
      arrival: Location(
        town: 'Сочи',
        date: DateTime.parse('2024-02-23T18:40:00'),
        airport: 'AER',
      ),
      hasTransfer: false,
    ),
  ];
}
