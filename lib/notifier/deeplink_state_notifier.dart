import 'package:deeplink/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeeplinkStateNotifier extends ChangeNotifier {
  void load({String? url}) {
    if (url == null || App.navigationKey.currentContext == null) return;
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Navigator.of(App.navigationKey.currentContext!).pushNamed(url);
    });
  }
}

final deeplinkStateNotifier = ChangeNotifierProvider<DeeplinkStateNotifier>((ref) {
  return DeeplinkStateNotifier();
});
