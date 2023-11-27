import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de Víveres - Dueño',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Inicio - Dueño'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CustomButton(
              text: 'Categorías',
              icon: Icons.category,
              onPressed: () {
                // Navegar a la página de categorías
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesScreen()),
                );
              },
            ),
            SizedBox(height: 16.0),
            CustomButton(
              text: 'Productos',
              icon: Icons.shopping_cart,
              onPressed: () {
                // Navegar a la página de productos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductsPage()),
                );
              },
            ),
            SizedBox(height: 16.0),
            CustomButton(
              text: 'Perfil',
              icon: Icons.person,
              onPressed: () {
                // Navegar a la página de perfil
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            SizedBox(height: 16.0),
            CustomButton(
              text: 'Órdenes de Pedido',
              icon: Icons.assignment,
              onPressed: () {
                // Navegar a la página de órdenes de pedido
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrdersPage()),
                );
              },
            ),
            SizedBox(height: 16.0),
            CustomButton(
              text: 'Historial de Pedidos',
              icon: Icons.history,
              onPressed: () {
                // Navegar a la página de historial de pedidos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderHistoryPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onPressed;

  const CustomButton({
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Column(
        children: [
          Icon(icon, size: 36.0),
          SizedBox(height: 8.0),
          Text(text),
        ],
      ),
    );
  }
}

// Resto del código sin cambios...
