enum Routes {
  main(
    path: '/main',
    route: '/main',
    screenName: 'MainScreen',
  ),
  selectedCountry(
    path: 'selectedCountry',
    route: '/main/selectedCountry',
    screenName: 'selectedCountryScreen',
  ),
  allTickets(
    path: 'allTickets',
    route: '/main/selectedCountry/allTickets',
    screenName: 'AllTicketsScreen',
  ),
  hotels(
    path: '/hotels',
    route: '/hotels',
    screenName: 'hotelsScreen',
  ),
  short(
    path: '/short',
    route: '/short',
    screenName: 'shortScreen',
  ),
  subscriptions(
    path: '/subscriptions',
    route: '/subscriptions',
    screenName: 'subscriptionsScreen',
  ),
  profile(
    path: '/profile',
    route: '/profile',
    screenName: 'profileScreen',
  ),
  unknown(
    path: '/unknown',
    route: '/unknown',
    screenName: 'UnknownScreen',
  );

  const Routes({
    required this.path,
    required this.route,
    required this.screenName,
  });

  final String path;
  final String route;
  final String screenName;

  static String getRouteByScreenName(String? screenName) {
    return Routes.values
        .firstWhere(
          (element) => element.screenName == screenName,
          orElse: () => Routes.unknown,
        )
        .route;
  }

  static String getScreenNameByRoute(String? route) {
    return Routes.values.firstWhere(
      (element) => element.route == route,
      orElse: () {
        return Routes.unknown;
      },
    ).screenName;
  }
}
