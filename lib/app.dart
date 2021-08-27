import 'package:deeplink/screens/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final String? url;

  const App({
    Key? key,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomScreen(title: url.toString()),
    );
  }
}
