import 'package:effective_test/core/widgets/core_body/core_body.dart';
import 'package:effective_test/core/widgets/core_scaffold/core_scaffold.dart';
import 'package:effective_test/features/all_tickets/presentation/screens/all_tickets_screen.dart';
import 'package:effective_test/features/main/presentation/screens/main_screen.dart';
import 'package:effective_test/features/selected_country/presentation/screens/selected_country_screen.dart';
import 'package:effective_test/features/unknown/unknown_screen.dart';
import 'package:effective_test/router/routes.dart';
import 'package:effective_test/router/transitions/slide.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:effective_test/router/transitions/no_transition.dart';

final router = GoRouter(
  initialLocation: Routes.main.path,
  routes: [
    ShellRoute(
      routes: [
        GoRoute(
          name: Routes.main.name,
          path: Routes.main.path,
          pageBuilder: (context, state) {
            return slideTransition(
              context,
              state,
              CoreBody(
                child: MainScreen(
                  key: UniqueKey(),
                ),
              ),
            );
          },
          routes: [
            GoRoute(
              name: Routes.selectedCountry.name,
              path: Routes.selectedCountry.path,
              pageBuilder: (context, state) {
                return slideTransition(
                  context,
                  state,
                  CoreBody(
                    child: SelectedCountryScreen(
                      countryName: state.extra! as String,
                      key: UniqueKey(),
                    ),
                  ),
                );
              },
              routes: [
                GoRoute(
                  name: Routes.allTickets.name,
                  path: Routes.allTickets.path,
                  pageBuilder: (context, state) {
                    return slideTransition(
                      context,
                      state,
                      CoreBody(
                        child: AllTicketsScreen(
                          date: state.extra! as String,
                          key: UniqueKey(),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
      pageBuilder: (context, state, child) {
        return slideTransition(
          context,
          state,
          CoreScaffold(
            body: child,
          ),
        );
      },
    ),
    ShellRoute(
      routes: [
        GoRoute(
          name: Routes.hotels.name,
          path: Routes.hotels.path,
          pageBuilder: (context, state) {
            return slideTransition(
              context,
              state,
              UnknownScreen(
                key: UniqueKey(),
              ),
            );
          },
        ),
      ],
      pageBuilder: (context, state, child) {
        return noTransition(
          context,
          state,
          CoreScaffold(
            body: child,
          ),
        );
      },
    ),
    ShellRoute(
      routes: [
        GoRoute(
          name: Routes.short.name,
          path: Routes.short.path,
          pageBuilder: (context, state) {
            return slideTransition(
              context,
              state,
              UnknownScreen(
                key: UniqueKey(),
              ),
            );
          },
        ),
      ],
      pageBuilder: (context, state, child) {
        return noTransition(
          context,
          state,
          CoreScaffold(
            body: child,
          ),
        );
      },
    ),
    ShellRoute(
      routes: [
        GoRoute(
          name: Routes.subscriptions.name,
          path: Routes.subscriptions.path,
          pageBuilder: (context, state) {
            return slideTransition(
              context,
              state,
              UnknownScreen(
                key: UniqueKey(),
              ),
            );
          },
        ),
      ],
      pageBuilder: (context, state, child) {
        return noTransition(
          context,
          state,
          CoreScaffold(
            body: child,
          ),
        );
      },
    ),
    ShellRoute(
      routes: [
        GoRoute(
          name: Routes.profile.name,
          path: Routes.profile.path,
          pageBuilder: (context, state) {
            return noTransition(
              context,
              state,
              UnknownScreen(
                key: UniqueKey(),
              ),
            );
          },
        ),
      ],
      pageBuilder: (context, state, child) {
        return noTransition(
          context,
          state,
          CoreScaffold(
            body: child,
          ),
        );
      },
    ),
    ShellRoute(
      routes: [
        GoRoute(
          name: Routes.unknown.name,
          path: Routes.unknown.path,
          pageBuilder: (context, state) {
            return noTransition(
              context,
              state,
              UnknownScreen(
                key: UniqueKey(),
              ),
            );
          },
        ),
      ],
      pageBuilder: (context, state, child) {
        return noTransition(
          context,
          state,
          CoreScaffold(
            body: child,
          ),
        );
      },
    ),
  ],
);
