import 'package:flutter/material.dart';

void showCustomSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
      // Personaliza según tus necesidades...
    ),
  );
}

//para usar este widget para mostrar mensajes breves en la aplicación
//showCustomSnackbar(context, 'Producto añadido al carrito');