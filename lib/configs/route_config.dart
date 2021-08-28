import 'package:deeplink/app_router.dart';
import 'package:deeplink/screens/home_screen.dart';
import 'package:deeplink/screens/not_found_screen.dart';
import 'package:deeplink/screens/product_detail_screen.dart';
import 'package:deeplink/screens/products_screen.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter_deep_linking/flutter_deep_linking.dart';

class RouteConfig {
  final m.RouteSettings settings;
  RouteConfig({
    required this.settings,
  });

  String _removeSlash(String string) {
    return string.replaceFirst("/", "");
  }

  Router buildAppRouter() {
    return Router(
      routes: [
        Route(
          matcher: Matcher.path(_removeSlash(AppRouter.HOME)),
          materialBuilder: (m.BuildContext _, RouteResult result) => HomeScreen(),
        ),
        Route(
          matcher: Matcher.path(_removeSlash(AppRouter.PRODUCTS)),
          materialBuilder: (m.BuildContext _, RouteResult result) {
            String? keywords = result.uri.queryParameters['keywords'];
            Map<String, String> queryParameters = {...result.uri.queryParameters}..remove('keywords');
            return ProductsScreen(
              keywords: keywords ?? "",
              queryParameters: queryParameters,
            );
          },
          routes: [
            Route(
              matcher: Matcher.path('{id}'),
              materialBuilder: (m.BuildContext _, RouteResult result) {
                String id = result['id']!;
                return ProductDetailScreen(id: id);
              },
            )
          ],
        ),
        Route(
          matcher: Matcher.any(),
          materialBuilder: (m.BuildContext _, RouteResult result) => NotFoundScreen(),
        ),
      ],
    );
  }
}
