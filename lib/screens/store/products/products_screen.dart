import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('Contenido de los productos'),
      ),
    );
  }
}
