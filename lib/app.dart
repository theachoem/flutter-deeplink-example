import 'package:deeplink/app_router.dart';
import 'package:deeplink/notifier/deeplink_state_notifier.dart';
import 'package:deeplink/screens/home_screen.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class App extends HookWidget {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  final String? url;

  const App({
    Key? key,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read(deeplinkStateNotifier)..load(url: url);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomeScreen(),
      navigatorKey: navigationKey,
      onGenerateRoute: (setting) {
        return AppRouter(settings: setting).onGenerateRoute();
      },
    );
  }
}
