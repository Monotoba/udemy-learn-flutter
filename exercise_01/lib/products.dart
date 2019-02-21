import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String>
      products; // Can be set but not changed after construction...

  // Constructor
  Products([this.products = const []]){
    print("[Products] Constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("[Products] build");
    return Column(
      children: products
          .map((element) => Card(
                child: Column(children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text(element),
                ]
              ),
            ),
          ).toList(),
    );
  }
}
