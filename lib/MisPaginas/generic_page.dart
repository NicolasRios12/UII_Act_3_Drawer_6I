import 'package:flutter/material.dart';
import 'package:myapp/drawer.dart';

class GenericPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const GenericPage({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Contenedor para asegurar el tamaño de la imagen y un diseño limpio
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Esquinas redondeadas opcionales
                border: Border.all(color: Colors.blueAccent, width: 2), // Borde azul
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover, // Ajusta la imagen al contenedor
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 100, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}