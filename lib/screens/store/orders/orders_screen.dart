import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Órdenes de Pedido'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('Contenido de las órdenes de pedido'),
      ),
    );
  }
}
