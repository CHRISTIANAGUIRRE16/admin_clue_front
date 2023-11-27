import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const CustomTextField({
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: validator,
    );
  }
}

// Widget Para formularios

/*CustomTextField(
  controller: _emailController,
  labelText: 'Correo Electrónico',
  validator: (value) {
    if (value!.isEmpty || !value.contains('@')) {
      return 'Por favor, ingresa un correo electrónico válido';
    }
    return null;
  },
),  */