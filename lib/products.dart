 
 import 'package:flutter/material.dart';
 
 class Products extends StatelessWidget {

   final List<String> products;
   Products(this.products);


Widget  _buildProductItem(BuildContext context,int index){
        return Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/img.jpg'),
                        Text(products[index])
                      ],
                    ),
                  );
              
}
     @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
   itemBuilder: _buildProductItem,
   itemCount: products.length,
          );
  }

 }
 