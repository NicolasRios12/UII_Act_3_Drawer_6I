import 'package:flutter/material.dart';
import 'package:myapp/MisPaginas/generic_page.dart';

class GuarderiaPage extends GenericPage {
  static const String routeName = '/guarderia';

  const GuarderiaPage({super.key})
      : super(
          title: 'Guardería',
          // Reemplaza con la URL de tu imagen de guardería en GitHub
          imageUrl: 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/pog1.png',
        );
}