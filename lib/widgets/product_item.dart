import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String productName;
  final double price;

  const ProductItem({
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productName),
      subtitle: Text('\$${price.toString()}'),
      // Otros elementos de diseño específicos del producto...
    );
  }
}


//para usar este widget en una lista de productos
/* ListView.builder(
  itemCount: products.length,
  itemBuilder: (context, index) {
    return ProductItem(
      productName: products[index].name,
      price: products[index].price,
    );
  },
),*/