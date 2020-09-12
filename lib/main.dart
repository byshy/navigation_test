import 'package:flutter/material.dart';
import 'package:navigation_test/routing/navigation_service.dart';
import 'package:navigation_test/routing/routes.dart';

import 'di.dart';
import 'routing/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: sl<NavigationService>().navigatorKey,
      initialRoute: login,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
