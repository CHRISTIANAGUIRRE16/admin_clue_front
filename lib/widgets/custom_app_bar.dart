import 'dart:js';

import 'package:flutter/material.dart';
import 'package:admin_front/screens/auth/login_screen.dart';
import 'package:admin_front/screens/store/categories/categories_screen.dart';
import 'package:admin_front/screens/store/orders/order_history_screen.dart';
import 'package:admin_front/screens/store/orders/orders_screen.dart';
import 'package:admin_front/screens/store/products/products_screen.dart';
import 'package:admin_front/screens/store/profile_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Página de Inicio - Dueño'),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.orange,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildMenuItem('Perfil', Icons.person, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            }),
            _buildMenuItem('Categorías', Icons.category, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              );
            }),
            _buildMenuItem('Productos', Icons.shopping_cart, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductsScreen()),
              );
            }),
            _buildMenuItem('Órdenes', Icons.assignment, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrdersScreen()),
              );
            }),
            _buildMenuItem('Historial', Icons.history, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderHistoryScreen()),
              );
            }),
            _buildMenuItem('Cerrar Sesión', Icons.exit_to_app, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String text, IconData icon, VoidCallback onPressed) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.orange, // Cambiado a color naranja para que sea visible
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black, // Cambiado a color negro para que sea visible
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        onPressed();
        Navigator.pop(context as BuildContext); // Cierra el Drawer después de hacer tap
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
