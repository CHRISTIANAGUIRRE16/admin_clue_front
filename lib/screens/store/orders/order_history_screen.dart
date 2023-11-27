import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Pedidos'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('Contenido del historial de pedidos'),
      ),
    );
  }
}
