import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // ENCABEZADO PERSONALIZADO (Ajustado para que no se corte nada)
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 20, // Ajuste para el notch
              left: 20,
              right: 20,
              bottom: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.blueAccent, // Paleta de azules
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen Avatar (Dog Paw) desde la red
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: NetworkImage('https://raw.githubusercontent.com/google/material-design-icons/master/png/action/pets/materialicons/48dp/1x/baseline_pets_black_48dp.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                // Nombre de la Empresa
                const Text(
                  "Dog Club",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                // Bloque de información (Correo, Dirección, Teléfono)
                const Text(
                  "contacto@dogclub.com",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const Text(
                  "Calle Canina 123, Ciudad Mascotas",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const Text(
                  "Tel: 555-364-7000",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),

          // LISTILE: Icono, Texto y Acción (Rutas nombradas)
          ListTile(
            leading: const Icon(Icons.person, color: Colors.blueAccent),
            title: const Text("Perfil", style: TextStyle(color: Colors.blue)),
            onTap: () {
              Navigator.pop(context); // Cierra el drawer
              Navigator.pushNamed(context, '/perfil');
            },
          ),
          
          // Submenú de Servicios
          ExpansionTile(
            leading: const Icon(Icons.room_service, color: Colors.blueAccent),
            title: const Text("Servicios", style: TextStyle(color: Colors.blue)),
            iconColor: Colors.blueAccent,
            collapsedIconColor: Colors.blueAccent,
            childrenPadding: const EdgeInsets.only(left: 20),
            children: [
              ListTile(
                leading: const Icon(Icons.directions_walk, color: Colors.blueAccent),
                title: const Text("Paseos"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/paseos');
                },
              ),
              ListTile(
                leading: const Icon(Icons.hotel, color: Colors.blueAccent),
                title: const Text("Hospedaje"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/hospedaje');
                },
              ),
              ListTile(
                leading: const Icon(Icons.pets, color: Colors.blueAccent),
                title: const Text("Guarderia"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/guarderia');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
