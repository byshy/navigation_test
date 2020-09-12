import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:navigation_test/routing/navigation_service.dart';

import 'features/auth/auth_provider.dart';
import 'features/home/home_provider.dart';

/// sl: service locator
final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => HomeProvider());
  sl.registerLazySingleton(() => AuthProvider());

  sl.registerLazySingleton(() => NavigationService());
}
