import 'package:flutter/material.dart';

abstract final class AppRoutes {
  static const login = '/login';
  static const donorHome = '/donor';
  static const charityHome = '/charity';

  static String forRole(String? role) => switch (role?.trim().toLowerCase()) {
        'donor' => donorHome,
        'charity' => charityHome,
        _ => login,
      };
}

abstract final class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    AppRoutes.login: (_) => const SizedBox.shrink(),
    AppRoutes.donorHome: (_) => const SizedBox.shrink(),
    AppRoutes.charityHome: (_) => const SizedBox.shrink(),
  };
}
