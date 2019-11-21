 import 'package:flutter/material.dart';

 import './products.dart';


class  ProdcutManager extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ProdcutManager> {

    List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
Container(
            margin: EdgeInsets.all(15.0),
            child: RaisedButton(
              child: Text("Add Products"),
              onPressed: () {

           setState(() {
                 _products.add('Advance Food Taster');
           });
            

              },
            ),
          ),


       Products(_products)

    ],); 
  }
}



