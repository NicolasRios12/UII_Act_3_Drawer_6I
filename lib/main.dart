import 'package:flutter/material.dart';
import 'package:myapp/drawer.dart';
import 'package:myapp/MisPaginas/perfil_page.dart';
import 'package:myapp/MisPaginas/paseos_page.dart';
import 'package:myapp/MisPaginas/hospedaje_page.dart';
import 'package:myapp/MisPaginas/guarderia_page.dart';

void main() => runApp(const DogClubApp());

class DogClubApp extends StatelessWidget {
  const DogClubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Club',
      // Definición del tema con paleta de azules
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue[50],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      initialRoute: '/', // Ruta de inicio (puedes cambiarla si quieres que empiece en otra página)
      routes: {
        '/': (context) => const PerfilPage(), // Usaremos Perfil como página de inicio por simplicidad
        PerfilPage.routeName: (context) => const PerfilPage(),
        PaseosPage.routeName: (context) => const PaseosPage(),
        HospedajePage.routeName: (context) => const HospedajePage(),
        GuarderiaPage.routeName: (context) => const GuarderiaPage(),
      },
    );
  }
}