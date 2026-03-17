import 'package:flutter/material.dart';
import 'package:myapp/MisPaginas/generic_page.dart';

class PaseosPage extends GenericPage {
  static const String routeName = '/paseos';

  const PaseosPage({super.key})
      : super(
          title: 'Servicio de Paseos',
          // Reemplaza con la URL de tu imagen de paseos en GitHub
          imageUrl: 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/pog2.png',
        );
}