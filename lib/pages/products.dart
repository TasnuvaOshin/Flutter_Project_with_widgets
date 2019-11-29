import 'package:flutter/material.dart';

import '../product_manager.dart';
import 'package:flutter_dart/pages/manageproduct.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Product'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => manageProduct(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Manage Product'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => manageProduct(),
                  ),
                );
              },
            )
          ],
        ),
      ),

      appBar: AppBar(
        title: Text('My App'),
      ),

//this is for new feature
      body: ProdcutManager({'title': 'chocolate', 'image': 'assets/img.jpg'}),
    );
  }
}

/* 

asas
asas
 */
