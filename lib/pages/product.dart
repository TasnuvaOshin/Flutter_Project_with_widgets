import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  ProductPage(this.title,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(imageUrl),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text('Details'),
              ),
              Container(

                padding: EdgeInsets.all(2.0),
                child:  RaisedButton(
                  color: Colors.green,
                child: Text('Back'),
                onPressed: () => Navigator.pop(context),
              ),

              )
             
            ],
          ),
        )

        //
        //   child: Text('this is a product page '),
        // ),
        );
  }
}
