import 'package:flutter/material.dart';
import 'package:flutter_dart/product_manager.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),

body: ProdcutManager(),
      ),

      
    );
  }
}
