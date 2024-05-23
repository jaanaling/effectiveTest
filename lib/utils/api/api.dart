import 'package:dio/dio.dart';
import 'package:effective_test/features/all_tickets/models/ticket_model.dart';
import 'package:effective_test/features/main/models/offers_model.dart';
import 'package:effective_test/features/selected_country/model/tickets_offers_model.dart';
import 'package:effective_test/utils/utils.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: '${Utils.domen}${Utils.path}')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/214a1713-bac0-4853-907c-a1dfc3cd05fd')
  Future<OffersModelData> getOffers();

  @GET('/7e55bf02-89ff-4847-9eb7-7d83ef884017')
  Future<TicketsOffersModelData> getTicketsOffers();

  @GET('/670c3d56-7f03-4237-9e34-d437a9e56ebf')
  Future<AllTicketsModel> getTickets();
}
