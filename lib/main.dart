import 'package:flutter/material.dart';

import 'package:admin_front/screens/auth/login_screen.dart';
import 'package:admin_front/screens/auth/registration_screen.dart';
import 'package:admin_front/screens/clue/welcome_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Esta línea oculta la etiqueta de depuración
      routes: {
        '/login': (context) => LoginScreen(),
        '/registration': (context) => RegistrationScreen(),
        // Puedes agregar más rutas según sea necesario
      },
      title: 'Tu Aplicación',
      theme: ThemeData(
        // Configuración del tema de tu aplicación
      ),
      home: WelcomeScreen(), // Puedes especificar tu pantalla de bienvenida aquí
    );
  }
}
