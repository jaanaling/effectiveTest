part of 'all_tickets_bloc.dart';

sealed class AllTicketsState {}

final class AllTicketsInitial extends AllTicketsState {}

final class GetTicketsState extends AllTicketsState {
  List<TicketModel> tickets;

  GetTicketsState({required this.tickets});
}
