import 'package:flutter/material.dart';
import 'package:deeplink/configs/route_config.dart';
import 'package:flutter_deep_linking/flutter_deep_linking.dart' as dl;

class AppRouter {
  static const String HOME = '/home';
  static const String PRODUCTS = '/products';
  static const String NOT_FOUND = '/404';

  late RouteConfig routeConfig;
  final RouteSettings settings;

  AppRouter({required this.settings}) {
    routeConfig = RouteConfig(settings: settings);
  }

  Route<dynamic>? onGenerateRoute() {
    RouteSettings settings = this.settings;
    dl.Router router = routeConfig.buildAppRouter();
    return router.onGenerateRoute(settings);
  }

  String defaultRoute() => HOME;
}
