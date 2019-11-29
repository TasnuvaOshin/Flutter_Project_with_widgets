import 'package:flutter/material.dart';

class manageProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Manage Product'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.6),
                child: Text('Manage Products'),
              )
            ],
          ),
        ));
  }
}
