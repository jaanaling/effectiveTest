part of 'selected_country_bloc.dart';

sealed class SelectedCountryState {}

final class SelectedCountryInitial extends SelectedCountryState {}

final class GetTicketOffersState extends SelectedCountryState {
  List<TicketOffersModel> ticketOffers;

  GetTicketOffersState({required this.ticketOffers});
}
