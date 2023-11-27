import 'package:admin_front/widgets/custom_button.dart';
import 'package:admin_front/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _storeNameController = TextEditingController();
  TextEditingController _ownerNameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _referenceController = TextEditingController();
  TextEditingController _sloganController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _verifyPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Tienda'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextField(
                controller: _storeNameController,
                labelText: 'Nombre de la Tienda',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa el nombre de la tienda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                controller: _ownerNameController,
                labelText: 'Nombre del Dueño',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa el nombre del dueño';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                controller: _phoneController,
                labelText: 'Teléfono',
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa el número de teléfono';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                controller: _addressController,
                labelText: 'Dirección',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa la dirección';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                controller: _referenceController,
                labelText: 'Referencia',
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                controller: _sloganController,
                labelText: 'Eslogan',
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                controller: _passwordController,
                labelText: 'Contraseña',
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa la contraseña';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                controller: _verifyPasswordController,
                labelText: 'Verificar Contraseña',
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, verifica la contraseña';
                  }
                  if (value != _passwordController.text) {
                    return 'Las contraseñas no coinciden';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              CustomButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Realiza la lógica de registro aquí
                    // Por ejemplo, puedes enviar los datos al backend
                    // y luego navegar a la pantalla de bienvenida
                    Navigator.pushReplacementNamed(context, '/welcome');
                  }
                },
                text: 'Registrarse',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
