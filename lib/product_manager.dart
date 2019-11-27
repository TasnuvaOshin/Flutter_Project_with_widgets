import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProdcutManager extends StatefulWidget {
  final Map startingProduct;

  ProdcutManager(this.startingProduct);

  @override
  _State createState() => _State();
}

class _State extends State<ProdcutManager> {
  List<Map> _products = [];

  @override
  void initState() {
    // _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(15.0), child: ProductControl(_addProduct)),
        Expanded(child: Products(_products, _deleteProduct))
      ],
    );
  }
}
