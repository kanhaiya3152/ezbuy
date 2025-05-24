import 'package:ezbuy/screens/auth_screens.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreens.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AuthScreens(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => Scaffold(
          body: Center(
            child: Text("Screen does not exist"),
          ),
        ),
      );
  }
}
