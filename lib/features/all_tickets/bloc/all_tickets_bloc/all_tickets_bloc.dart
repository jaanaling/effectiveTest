import 'package:effective_test/features/all_tickets/data_provider/get_tickets.dart';
import 'package:effective_test/features/all_tickets/models/ticket_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'all_tickets_event.dart';
part 'all_tickets_state.dart';

class AllTicketsBloc extends Bloc<AllTicketsEvent, AllTicketsState> {
  AllTicketsBloc() : super(AllTicketsInitial()) {
    on<GetTicketsEvent>((event, emit) async {
      emit(GetTicketsState(tickets: await getTickets()));
    });
  }
}
