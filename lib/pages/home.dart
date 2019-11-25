import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),

//this is for new feature
      body: ProdcutManager('Food Taster one'),
    );
  }
}
