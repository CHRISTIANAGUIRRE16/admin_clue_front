import 'package:admin_front/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CLUE')),
        backgroundColor: Colors.orange, // Color de fondo de la barra de navegación
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Carousel de imágenes con texto
          CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 2.0,
            ),
            items: [
              Image.asset('/image1.png'),
              Image.asset('/image2.png'),
              Image.asset('/image3.png'),
            ],
          ),

          // Texto debajo del carousel
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Bienvenido a CLUE',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          // Flechas de navegación
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onPressed: () {
                  // Retroceder en el carousel
                  _carouselController.previousPage();
                },
                text: 'Atrás',
              ),
              SizedBox(width: 20.0),
              CustomButton(
                onPressed: () {
                  // Avanzar en el carousel
                  _carouselController.nextPage();
                },
                text: 'Siguiente',
              ),
            ],
          ),

          // Espaciador
          SizedBox(height: 20.0),

          // Botones de Iniciar Sesión y Registrarse con espacio adicional
          CustomButton(
            onPressed: () {
              // Navegar a la pantalla de inicio de sesión
              Navigator.pushNamed(context, '/login');
            },
            text: 'Iniciar Sesión',
          ),

          // Espaciador adicional
          SizedBox(height: 10.0),

          CustomButton(
            onPressed: () {
              // Navegar a la pantalla de registro
              Navigator.pushNamed(context, '/registration');
            },
            text: 'Registrarse',
          ),
        ],
      ),
    );
  }
}
