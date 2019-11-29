import 'package:flutter/material.dart';


import 'pages/auth.dart';
import 'package:flutter_dart/pages/manageproduct.dart';

// import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  debugShowMaterialGrid: true,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: AuthPage(),
      routes: {

        '/manageproduct':   (BuildContext context) => manageProduct(),
                    
      },
    );
  }
}
