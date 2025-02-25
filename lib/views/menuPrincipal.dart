import 'package:alquiler_flutter_dan/views/detallesVehiculo.dart';
import 'package:flutter/material.dart';

class Menuprincipal extends StatefulWidget {
  const Menuprincipal({super.key});

  @override
  State<Menuprincipal> createState() => _MenuprincipalState();
}

class _MenuprincipalState extends State<Menuprincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Alquiler de autos",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.network(
              "https://cdn-icons-png.flaticon.com/512/4715/4715329.png",
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Nombre de usuario",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const Text(
              "correo@ejemplo.com",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            ListTile(
              title: Text(
                "Número de licencia",
                style: TextStyle(color: Colors.grey[300]),
              ),
              subtitle: Text(
                "12345678",
                style: TextStyle(color: Colors.grey[300]),
              ),
              leading: const Icon(Icons.badge_rounded),
              iconColor: Colors.grey[300],
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Sobremi()));
              },
            ),
            const Divider(),
            ListTile(
              title: Text(
                "Cambiar contraseña",
                style: TextStyle(color: Colors.grey[300]),
              ),
              leading: const Icon(Icons.lock),
              iconColor: Colors.grey[300],
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: Text(
                "Revisar alquileres",
                style: TextStyle(color: Colors.grey[300]),
              ),
              leading: const Icon(Icons.search),
              iconColor: Colors.grey[300],
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(
                5.0), // Espaciado alrededor del campo de texto
            child: TextField(
              decoration: InputDecoration(
                filled: true, // Relleno de color de fondo
                fillColor: Colors.grey[300], // Color de fondo
                prefixIcon: const Icon(
                  Icons.search, // Ícono de búsqueda
                  color: Colors.grey, // Color del ícono
                ),
                hintText: "Buscar vehiculo", // Texto sugerido
                hintStyle: const TextStyle(
                  color: Colors.grey, // Color del texto sugerido
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Bordes redondeados
                  borderSide: BorderSide.none, // Sin borde visible
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.red, width: 2),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Toyota Corolla",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                      height: 5), // Espacio entre el título y la descripción
                  Row(
                    children: [
                      Text(
                        "Año 2022 -",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14, // Estilo para la descripción
                        ),
                      ),
                      Text(
                        " \$99.99/día",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              leading: Image.network(
                "https://images.vexels.com/media/users/3/145078/isolated/preview/d5026c659b3202b62a4213be947c2ff6-ilustracion-de-suv-rojo.png",
                width: 50, // Tamaño de la imagen
                height: 50,
                fit: BoxFit.cover, // Ajusta la imagen a un cuadrado
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white, // Color del ícono
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Detallesvehiculo()));
              },
            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Toyota Corolla",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                      height: 5), // Espacio entre el título y la descripción
                  Row(
                    children: [
                      Text(
                        "Año 2022 -",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14, // Estilo para la descripción
                        ),
                      ),
                      Text(
                        " \$99.99/día",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              leading: Image.network(
                "https://images.vexels.com/media/users/3/145078/isolated/preview/d5026c659b3202b62a4213be947c2ff6-ilustracion-de-suv-rojo.png",
                width: 50, // Tamaño de la imagen
                height: 50,
                fit: BoxFit.cover, // Ajusta la imagen a un cuadrado
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white, // Color del ícono
              ),
              onTap: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Detallesvehiculo()));
              },
            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Toyota Corolla",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                      height: 5), // Espacio entre el título y la descripción
                  Row(
                    children: [
                      Text(
                        "Año 2022 -",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14, // Estilo para la descripción
                        ),
                      ),
                      Text(
                        " \$99.99/día",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              leading: Image.network(
                "https://images.vexels.com/media/users/3/145078/isolated/preview/d5026c659b3202b62a4213be947c2ff6-ilustracion-de-suv-rojo.png",
                width: 50, // Tamaño de la imagen
                height: 50,
                fit: BoxFit.cover, // Ajusta la imagen a un cuadrado
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white, // Color del ícono
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Detallesvehiculo()));
              },
            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Toyota Corolla",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                      height: 5), // Espacio entre el título y la descripción
                  Row(
                    children: [
                      Text(
                        "Año 2022 -",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14, // Estilo para la descripción
                        ),
                      ),
                      Text(
                        " \$99.99/día",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              leading: Image.network(
                "https://images.vexels.com/media/users/3/145078/isolated/preview/d5026c659b3202b62a4213be947c2ff6-ilustracion-de-suv-rojo.png",
                width: 50, // Tamaño de la imagen
                height: 50,
                fit: BoxFit.cover, // Ajusta la imagen a un cuadrado
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white, // Color del ícono
              ),
              onTap: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Detallesvehiculo()));
              },
            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Toyota Corolla",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                      height: 5), // Espacio entre el título y la descripción
                  Row(
                    children: [
                      Text(
                        "Año 2022 -",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14, // Estilo para la descripción
                        ),
                      ),
                      Text(
                        " \$99.99/día",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              leading: Image.network(
                "https://images.vexels.com/media/users/3/145078/isolated/preview/d5026c659b3202b62a4213be947c2ff6-ilustracion-de-suv-rojo.png",
                width: 50, // Tamaño de la imagen
                height: 50,
                fit: BoxFit.cover, // Ajusta la imagen a un cuadrado
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white, // Color del ícono
              ),
              onTap: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Detallesvehiculo()));
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car,
              color: Colors.black,
            ),
            label: "Alquiler",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.black,
            ),
            label: "Usuarios",
          ),
        ],
        currentIndex: 0, // Índice actual
        selectedItemColor: Colors.black, // Color del ítem seleccionado
        unselectedItemColor: Colors.black, // Color del ítem no seleccionado
        selectedLabelStyle: const TextStyle(
          fontSize: 16, // Tamaño de fuente para el label seleccionado
          fontWeight:
              FontWeight.bold, // Peso de la fuente para el label seleccionado
          color: Colors.black, // Color para el label seleccionado
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14, // Tamaño de fuente para el label no seleccionado
          fontWeight: FontWeight
              .normal, // Peso de la fuente para el label no seleccionado
          color: Colors.grey, // Color para el label no seleccionado
        ),
      ),
    );
  }
}
