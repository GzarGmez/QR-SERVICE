import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo negro con degradado
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black,
                  Color(0xFF1A1A1A),
                ],
              ),
            ),
          ),
          // Contenido principal centrado y ajustado hacia arriba
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Alinea los elementos hacia la parte superior
              crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente
              children: [
                // Imagen QR más grande encima del texto "Bienvenido"
                Image.asset(
                  'assets/images/QR.png', // Ruta de la imagen
                  width: 300, // Aumenta el tamaño de la imagen
                  height: 300, // Aumenta el tamaño de la imagen
                ),
                const SizedBox(height: 8), // Espacio reducido entre la imagen y el texto
                const Text(
                  'Bienvenido',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20), // Espacio reducido entre el texto y los botones
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/user');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    backgroundColor: Colors.black,
                    side: const BorderSide(color: Colors.cyanAccent, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Usuario',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/admin');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    backgroundColor: Colors.black,
                    side: const BorderSide(color: Colors.cyanAccent, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Administrador',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30), // Espacio al final
              ],
            ),
          ),
        ],
      ),
    );
  }
}
