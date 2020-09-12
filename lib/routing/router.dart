import 'package:flutter/material.dart';
import 'package:navigation_test/features/auth/auth_provider.dart';
import 'package:navigation_test/features/auth/login_screen.dart';
import 'package:navigation_test/features/home/home_provider.dart';
import 'package:navigation_test/features/home/home_screen.dart';
import 'package:provider/provider.dart';

import '../di.dart';
import 'routes.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider.value(
            child: HomeScreen(),
            value: sl<HomeProvider>(),
          ),
        );
      case login:
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider.value(
            child: LoginScreen(),
            value: sl<AuthProvider>(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
