import 'package:flutter/material.dart';
import 'package:myapp/MisPaginas/generic_page.dart';

class PerfilPage extends GenericPage {
  static const String routeName = '/perfil';

  const PerfilPage({super.key})
      : super(
          title: 'Perfil de Usuario',
          // Reemplaza con la URL de tu imagen de perfil en GitHub
          imageUrl: 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/foto1.png', 
        );
}