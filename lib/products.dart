import 'package:flutter/material.dart';
import 'pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<dynamic, dynamic>> products;

  final Function deleteProduct;
  Products(this.products, this.deleteProduct);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductPage(
                        products[index]['title'], products[index]['image']),
                  ),
                ).then((bool value) {
                  print(value);
                  if (value) {
                    print('we deleted the product');
                    deleteProduct(index);
                  }
                }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductLists() {
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
