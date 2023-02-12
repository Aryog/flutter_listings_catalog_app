import 'package:catalog_application/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.all(32),
          children: [
            Text(
              "\$${catalog.price}",
              textScaleFactor: 1.4,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 157, 54, 47)),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 45,
                child: AddToCart(catalog: catalog))
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Container(
            child: Hero(
              child: Image.network(catalog.image),
              tag: Key(catalog.id.toString()),
            ),
            height: MediaQuery.of(context).size.height * 0.32,
          ),
          Expanded(
              child: ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).cardColor,
              child: Column(children: [
                Padding(padding: EdgeInsets.only(top: 56)),
                Text(
                  "${catalog.name}",
                  textScaleFactor: 1.4,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor),
                ),
                Text(
                  "${catalog.desc}",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.",
                    textScaleFactor: 1,
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                ),
              ]),
            ),
          ))
        ]),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    // start at top left corner
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    // the type of filter here,here,destination width,dest height
    path.quadraticBezierTo(w * 0.5, h - 250, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
