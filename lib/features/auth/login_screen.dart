import 'package:flutter/material.dart';
import 'package:navigation_test/routing/navigation_service.dart';
import 'package:navigation_test/routing/routes.dart';

import '../../di.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Home'),
          onPressed: () {
            sl<NavigationService>().navigateToAndRemove(home);
          },
        ),
      ),
    );
  }
}
