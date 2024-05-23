part of 'main_bloc.dart';

sealed class MainState {}

final class MainInitial extends MainState {}

final class GetOffersState extends MainState {
  List<OffersModel> offers;

  GetOffersState({required this.offers});
}
