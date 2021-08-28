import 'package:deeplink/screens/product_detail_screen.dart';
import 'package:deeplink/screens/products_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Product Detail"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ProductDetailScreen(id: "apple");
                  },
                ));
              },
            ),
            TextButton(
              child: Text("Products Screen"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ProductsScreen(keywords: "123", queryParameters: {});
                  },
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
