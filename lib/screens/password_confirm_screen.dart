import 'package:admin_front/widgets/custom_button.dart';
import 'package:admin_front/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class PasswordConfirmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Restablecer Contraseña')),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: TextEditingController(), // Puedes pasar un controlador adecuado aquí
              labelText: 'Número de Teléfono',
            ),
            SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                // Implementar lógica de restablecimiento de contraseña aquí
                // Navegar a la página de inicio cuando se presiona el botón "Restablecer Contraseña"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              text: 'Restablecer Contraseña',
            ),
          ],
        ),
      ),
    );
  }
}
