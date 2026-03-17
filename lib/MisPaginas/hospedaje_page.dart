import 'package:flutter/material.dart';
import 'package:myapp/MisPaginas/generic_page.dart';

class HospedajePage extends GenericPage {
  static const String routeName = '/hospedaje';

  const HospedajePage({super.key})
      : super(
          title: 'Hospedaje Canino',
          // Reemplaza con la URL de tu imagen de hospedaje en GitHub
          imageUrl: 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/casa1.png',
        );
}