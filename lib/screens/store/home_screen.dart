import 'package:admin_front/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), // Utiliza directamente CustomAppBar aquí
      body: Center(
        child: Text('Contenido página de inicio'),
      ),
    );
  }
}