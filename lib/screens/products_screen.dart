import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    Key? key,
    required this.keywords,
    required this.queryParameters,
  }) : super(key: key);

  final Map<String, String> queryParameters;
  final String keywords;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Listing"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "keywords: $keywords",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                "queryParameters: $queryParameters",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                "routeName: ${ModalRoute.of(context)?.settings.name}",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
