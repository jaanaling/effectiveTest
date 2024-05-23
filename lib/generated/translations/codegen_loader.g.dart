// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ru = {
    "search_for_cheap_flights": "Поиск дешевых\nавиабилетов",
    "from": "Откуда - Москва",
    "to": "Куда - Турция",
    "fly_away_musically": "Музыкально отлететь",
    "show_all_places": "Показать все места",
    "your_first_time": "Ваш первый раз",
    "a_difficult_route": "Сложный маршрут",
    "anywhere": "Куда угодно",
    "weekend": "Выходные",
    "hot_tickets": "Горячие билеты",
    "back": "обратно",
    "straight_rails": "Прямые рейсы",
    "show_all": "Показать все",
    "view_all_tickets": "Посмотреть все билеты",
    "subscription_to_the_price": "Подписка на цену",
    "done": "Готово",
    "passenger": "{} пассажир",
    "without_transfers": "Без пересадок",
    "h_in_route": "{}ч в пути",
    "air_tickets": "Авиабилеты",
    "hotels": "Отели",
    "short": "Короче",
    "subscriptions": "Подписки",
    "profile": "Профиль",
    "cost": "от {} ₽",
    "popular_route": "Популярное направление",
    "stambul": "Стамбул",
    "sochy": "Сочи",
    "phuket": "Пхукет",
    "date_format": "d MMM, E",
    "in_transit": "{hours}ч {minutes}м в пути",
    "direct": "Без пересадок",
    "filter": "Фильтр",
    "price_chart": "График цен",
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {"ru": ru};
}
