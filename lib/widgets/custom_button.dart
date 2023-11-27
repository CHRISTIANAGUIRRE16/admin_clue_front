import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function()? onPressed;

  const CustomButton({required this.text, required this.onPressed});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isHovered ? Colors.deepOrange : Colors.orange,
          foregroundColor: Colors.white,
        ),
        child: Text(widget.text),
      ),
    );
  }
}



//Widget para los botones

/* CustomButton(
  text: 'Iniciar Sesión',
  onPressed: () {
    // Lógica de inicio de sesión
  },
), */