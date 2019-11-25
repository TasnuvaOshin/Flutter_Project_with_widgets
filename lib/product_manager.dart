

import 'package:flutter/material.dart';

 import './products.dart';
 import './product_control.dart';


class  ProdcutManager extends StatefulWidget {

    final String startingProduct;

    ProdcutManager(this.startingProduct);


 

  
       


  @override
  _State createState() => _State();
}

class _State extends State<ProdcutManager> {

    List<String> _products = [];

       @override
  void initState() {

    _products.add(widget.startingProduct);
    super.initState();

  }


void _addProduct(String product){
          setState(() {
                 _products.add(product);
           });

}

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
Container(
            margin: EdgeInsets.all(15.0),
            child: ProductControl(_addProduct)
          ), 



        
       Products(_products)

    ],); 
  }
}



