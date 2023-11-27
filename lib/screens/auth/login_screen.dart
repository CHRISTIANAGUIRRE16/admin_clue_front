
import 'package:admin_front/screens/auth/password_confirm_screen.dart';
import 'package:admin_front/screens/auth/registration_screen.dart';
import 'package:admin_front/screens/store/home_screen.dart';
import 'package:admin_front/widgets/custom_button.dart';
import 'package:admin_front/widgets/custom_text_field.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // Crear controladores para los campos de texto
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Inicio de Sesión')),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image1.png'),
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: phoneNumberController,
              labelText: 'Número de Teléfono',
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, ingresa el número de teléfono';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            CustomTextField(
              controller: passwordController,
              labelText: 'Contraseña',
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, ingresa la contraseña';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                if (_validateFields()) {
                  // Ambos campos son válidos, puedes implementar la lógica de inicio de sesión aquí
                  // Navegar a la página de inicio del cliente cuando se presiona el botón "Iniciar Sesión"
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }
              },
              text: 'Iniciar Sesión',
            ),
            SizedBox(height: 10),
            CustomButton(
              onPressed: () {
                // Navegar a la pantalla de registro cuando se presiona el botón "Registrarse"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationScreen(),
                  ),
                );
              },
              text: 'Registrarse',
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navegar a la página de restablecimiento de contraseña
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasswordConfirmScreen(),
                  ),
                );
              },
              child: Text(
                '¿Olvidaste tu contraseña? Recupérala aquí',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _validateFields() {
    // Validar todos los campos aquí
    return phoneNumberController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }
}
