import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail Screen"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "id: $id",
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
    );
  }
}
