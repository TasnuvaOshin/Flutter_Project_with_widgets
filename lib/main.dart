import 'package:flutter/material.dart';
import 'package:flutter_dart/product_manager.dart';

// import 'package:flutter/rendering.dart';

void main() { 
  
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  runApp(MyApp()
);


}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  //  debugShowMaterialGrid: true,
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
