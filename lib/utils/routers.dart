import 'package:flutter/material.dart';
import 'package:moniepoint_demo/views/dashboard.dart';
import 'package:moniepoint_demo/views/not_found.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Dashboard.path:
        return MaterialPageRoute(builder: (context) => const Dashboard());
      default:
        return MaterialPageRoute(builder: (context) => const NotFoundView());
    }
  }
}
