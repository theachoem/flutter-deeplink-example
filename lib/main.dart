import 'package:deeplink/app.dart';
import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? url = await _initialUrl();
  runApp(
    StreamBuilder<String?>(
      stream: linkStream,
      builder: (context, snapshot) {
        return App(url: snapshot.data ?? url);
      },
    ),
  );
}

Future<String?> _initialUrl() async {
  String? _initialUrl;
  try {
    _initialUrl = await getInitialLink();
  } catch (e) {}
  return _initialUrl;
}
