const String iconsFolderPath = 'assets/icons/svg/';

enum IconProvider {
  airTickets(iconName: 'air_tickets.svg'),
  airplane(iconName: 'airplane.svg'),
  ball(iconName: 'ball.svg'),
  arrowUp(iconName: 'arrow_up.svg'),
  calendar(iconName: 'calendar.svg'),
  change(iconName: 'change.svg'),
  chart(iconName: 'chart.svg'),
  close(iconName: 'close.svg'),
  filter(iconName: 'filter.svg'),
  fire(iconName: 'fire.svg'),
  hotels(iconName: 'hotels.svg'),
  human(iconName: 'human.svg'),
  leftArrow(iconName: 'left_arrow.svg'),
  notifications(iconName: 'notifications.svg'),
  plus(iconName: 'plus.svg'),
  present(iconName: 'present.svg'),
  profile(iconName: 'profile.svg'),
  rightArrow(iconName: 'right_arrow.svg'),
  routes(iconName: 'routes.svg'),
  sample(iconName: 'sample.svg'),
  search(iconName: 'search.svg'),
  share(iconName: 'share.svg'),
  short(iconName: 'short.svg'),
  subscriptions(iconName: 'subscriptions.svg'),
  tooltip(iconName: 'tooltip.svg'),
  unknown(iconName: '');

  const IconProvider({
    required this.iconName,
  });

  final String iconName;

  String buildIconUrl() {
    return '$iconsFolderPath$iconName';
  }
}
