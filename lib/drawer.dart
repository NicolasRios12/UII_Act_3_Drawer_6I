import 'package:flutter/material.dart';
import 'package:myapp/MisPaginas/perfil_page.dart';
import 'package:myapp/MisPaginas/paseos_page.dart';
import 'package:myapp/MisPaginas/hospedaje_page.dart';
import 'package:myapp/MisPaginas/guarderia_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const double avatarSize = 72.0; // Tamaño personalizado para el CircleAvatar

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.blueAccent), // Azul oscuro para el encabezado
            accountName: const Text(
              "Dog Club",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            accountEmail: const Text(
              "contacto@dogclub.com\nCalle Canina 123\nTel: 555-DOGS",
              style: TextStyle(color: Colors.white70),
            ),
            currentAccountPicture: Container(
              width: avatarSize,
              height: avatarSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  'https://raw.githubusercontent.com/google/material-design-icons/master/png/action/pets/materialicons/48dp/1x/baseline_pets_black_48dp.png',
                  width: avatarSize,
                  height: avatarSize,
                  fit: BoxFit.cover, // Ajusta la imagen al círculo
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.blueAccent),
            title: const Text("Perfil"),
            onTap: () => Navigator.pushReplacementNamed(context, PerfilPage.routeName),
          ),
          ExpansionTile(
            leading: const Icon(Icons.room_service, color: Colors.blueAccent),
            title: const Text("Servicios", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold)),
            collapsedIconColor: Colors.blueAccent,
            iconColor: Colors.blue,
            initiallyExpanded: false, // Empieza colapsado
            childrenPadding: const EdgeInsets.only(left: 16.0), // Sangría para submenús
            children: [
              ListTile(
                leading: const Icon(Icons.directions_walk, color: Colors.blueAccent),
                title: const Text("Paseos"),
                onTap: () => Navigator.pushReplacementNamed(context, PaseosPage.routeName),
              ),
              ListTile(
                leading: const Icon(Icons.hotel, color: Colors.blueAccent),
                title: const Text("Hospedaje"),
                onTap: () => Navigator.pushReplacementNamed(context, HospedajePage.routeName),
              ),
              ListTile(
                leading: const Icon(Icons.pets, color: Colors.blueAccent),
                title: const Text("Guardería"),
                onTap: () => Navigator.pushReplacementNamed(context, GuarderiaPage.routeName),
              ),
            ],
          ),
        ],
      ),
    );
  }
}