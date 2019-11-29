import 'package:flutter/material.dart';

import '../product_manager.dart';
import 'package:flutter_dart/pages/manageproduct.dart';
import 'package:flutter_dart/pages/product_create.dart';
import 'package:flutter_dart/pages/product_list.dart';
class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Product'),
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
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Product',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Product',
              )
            ],
          ),
        ),

//this is for new feature
     //  body: ProdcutManager({'title': 'chocolate', 'image': 'assets/img.jpg'}),
      
      body: TabBarView(

        children: <Widget>[
         productCreatePage(),
         productListPage(),

        ],
      ),
      ),
    );
  }
}

/* 

asas
asas
 */
