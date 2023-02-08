import 'package:catalog_application/widgets/themes.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          textScaleFactor: 1.5,
          style: TextStyle(),
        ),
      ),
    );
  }
}
