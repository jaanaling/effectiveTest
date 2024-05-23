part of 'selected_country_bloc.dart';

@immutable
sealed class SelectedCountryEvent {}

final class GetTicketOffersEvent extends SelectedCountryEvent {}
