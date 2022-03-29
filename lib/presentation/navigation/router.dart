import 'package:crypto_prices/presentation/home/view/home_page.dart';
import 'package:crypto_prices/presentation/login/view/login_page.dart';
import 'package:flutter/material.dart';

enum RouteType {
  push,
  pop,
}

enum AppRoute {
  splashScreen,
  login,
  home,
}

extension AppRouteExtension on AppRoute {
  String getRouteName() {
    final name = toString().replaceAll('AppRoute.', '');
    final firstLetter = name[0];
    return name.replaceFirst(firstLetter, firstLetter.toUpperCase());
  }
}

abstract class AppRouter {
  static String? initRoute() => AppRoute.login.getRouteName();

  static final Map<String, PageRoute Function(RouteSettings)> _routes = {
    AppRoute.login.getRouteName(): (settings) => MaterialPageRoute<LoginPage>(
          builder: (context) => const LoginPage(),
        ),
    AppRoute.home.getRouteName(): (settings) => MaterialPageRoute<HomePage>(
          builder: (context) => const HomePage(),
        ),
  };

  static void navigate({
    required BuildContext context,
    required AppRoute route,
    AppRoute? parentRoute,
    required RouteType type,
    Object? arguments,
  }) {
    final routeId = route.getRouteName();
    switch (type) {
      case RouteType.push:
        Navigator.pushNamed(context, routeId, arguments: arguments);
        break;
      case RouteType.pop:
        Navigator.popUntil(context, ModalRoute.withName(routeId));
        break;
    }
  }

  static RouteFactory generateRoute() {
    return (settings) => _routes[settings.name]!(settings);
  }
}
