import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/img.jpg'),
          Text(products[index])
        ],
      ),
    );
  }


Widget _buildProductLists(){
  Widget productCart = Center(
      child: Text('No Products Found '),
    );

    if (products.length > 0) {
      productCart = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCart;
  }


  @override
  Widget build(BuildContext context) {
  return _buildProductLists();
}
}