import 'package:alquiler_flutter_dan/controller/autos_controller.dart';
import 'package:alquiler_flutter_dan/views/detallesVehiculo.dart';
import 'package:flutter/material.dart';

class Menuprincipal extends StatefulWidget {
  const Menuprincipal({super.key});

  @override
  State<Menuprincipal> createState() => _MenuprincipalState();
}

class _MenuprincipalState extends State<Menuprincipal> {
  final AutosController autosController = AutosController();
  List<Map<String, dynamic>> listaDeAutos = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    cargarAutos();
  }

  void cargarAutos() async {
    try {
      final autos = await autosController.obtenerAutosDisponibles();
      setState(() {
        listaDeAutos = autos;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error al cargar autos: $e');
    }
  }

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
            const SizedBox(height: 80),
            Image.network(
              "https://cdn-icons-png.flaticon.com/512/4715/4715329.png",
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 10),
            const Text(
              "Nombre de usuario",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const Text(
              "correo@ejemplo.com",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
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
              onTap: () {},
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                hintText: "Buscar vehiculo",
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.red, width: 2),
                ),
              ),
            ),
          ),
          Expanded(
            child:
                isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : listaDeAutos.isEmpty
                    ? const Center(child: Text('No hay autos disponibles'))
                    : ListView.builder(
                      itemCount: listaDeAutos.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.black,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${listaDeAutos[index]['marca']} ${listaDeAutos[index]['modelo']}',
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      'Año ${listaDeAutos[index]['anio']} -',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      ' \$${listaDeAutos[index]['precio']}/día',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            leading: Image.network(
                              "https://images.vexels.com/media/users/3/145078/isolated/preview/d5026c659b3202b62a4213be947c2ff6-ilustracion-de-suv-rojo.png",
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => DetalleVehiculoScreen(
                                        imageUrl: "URL_DEL_VEHÍCULO",
                                        marca: "Toyota",
                                        modelo: "Corolla",
                                        anio: "2022",
                                        disponibilidad: 1,
                                        autoId: 123,
                                      ),
                                ),
                              );
                            },
                          ),
                        );
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
            icon: Icon(Icons.home, color: Colors.black),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car, color: Colors.black),
            label: "Alquiler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded, color: Colors.black),
            label: "Usuarios",
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
      ),
    );
  }
}
