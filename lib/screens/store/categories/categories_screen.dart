import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorías'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('Contenido de las categorías'),
      ),
    );
  }
}
