import 'package:flutter/material.dart';
import 'package:flutter_dart/product_manager.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),

//this is for new feature
body: ProdcutManager('Food Taster one'),
      ),

      
    );
  }
}
