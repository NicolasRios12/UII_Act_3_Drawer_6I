
---

##  Características Principales

* **Paleta de Colores:** Diseño personalizado utilizando `Colors.blueAccent` y variantes de azul para una interfaz limpia y profesional.
* **Drawer Dinámico:** * Encabezado con Avatar circular (Logo de huella desde red).
    * Información de contacto (Nombre, Dirección, Teléfono, Correo).
    * Menú desplegable (**ExpansionTile**) para la sección de servicios.
* **Navegación por Rutas Nombradas:** Implementación de `routes` en `MaterialApp` para un manejo de pantallas escalable.
* **Contenido Remoto:** Carga de imágenes optimizadas de **200x200** directamente desde repositorios de GitHub.

---

##  Estructura del Menú (Drawer)

El menú lateral consta de 4 opciones principales distribuidas de la siguiente forma:

1.   **Perfil**: Acceso a la información del usuario.
2.   **Servicios**: (Menú desplegable)
    *  **Paseos**: Gestión de caminatas caninas.
    *  **Hospedaje**: Reservas de estadía larga.
    *  **Guardería**: Cuidado diario intensivo.

---

##  Capturas y Especificaciones Visuales
   **Imágenes** Centradas, 200x200 px, provenientes de GitHub.
   **Encabezado** `UserAccountsDrawerHeader` con fondo azul y avatar blanco.
   **Tipografía** Enfoque en legibilidad con pesos `FontWeight.bold` para títulos.

---

##  Organización del Proyecto

```text
lib/
├── main.dart           # Configuración de rutas y tema azul
├── drawer.dart         # Widget del Drawer personalizado
└── pages/
    ├── generic_page.dart  # Estructura base para las vistas
    ├── perfil_page.dart   # Vista de Perfil
    ├── paseos_page.dart   # Vista de Paseos
    ├── hospedaje_page.dart # Vista de Hospedaje
    └── guarderia_page.dart # Vista de Guardería
