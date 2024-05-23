part of 'all_tickets_bloc.dart';

@immutable
sealed class AllTicketsEvent {}

final class GetTicketsEvent extends AllTicketsEvent{}
