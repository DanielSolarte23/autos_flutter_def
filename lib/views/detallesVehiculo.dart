import 'package:alquiler_flutter_dan/views/medioPago.dart';
import 'package:flutter/material.dart';

class Detallesvehiculo extends StatefulWidget {
  const Detallesvehiculo({super.key});

  @override
  State<Detallesvehiculo> createState() => _DetallesvehiculoState();
}

class _DetallesvehiculoState extends State<Detallesvehiculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Detalle del vehiculo",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.network(
                      "https://images.vexels.com/media/users/3/145078/isolated/preview/d5026c659b3202b62a4213be947c2ff6-ilustracion-de-suv-rojo.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        "Marca:",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Toyota",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Modelo:",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Corolla",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Año:",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "2022",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Disponibilidad:",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                      Text(
                        "Disponible",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      )
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Mediopago()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.directions_car,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Alquilar vehiculo",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
