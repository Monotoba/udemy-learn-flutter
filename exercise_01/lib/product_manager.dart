import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = "Sweets Tester"}){
    print("[ProductManager] Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("[ProductManager] createState");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print("[ProductManagerState] initState");
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("[ProductManagerState] didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("[ProductManagerState] build");
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text('Add Product'),
            onPressed: () {
              setState(() {
                _products.add('Adavanced Food Tester');
              });
            },
          ),
        ),
        Products(_products),
      ],
    );
  }
}