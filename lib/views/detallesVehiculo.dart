import 'package:alquiler_flutter_dan/views/medioPago.dart';
import 'package:flutter/material.dart';

class DetalleVehiculoScreen extends StatefulWidget {
  final String imageUrl;
  final String marca;
  final String modelo;
  final String anio;
  final int disponibilidad;
  final int autoId;

  const DetalleVehiculoScreen({
    super.key,
    required this.imageUrl,
    required this.marca,
    required this.modelo,
    required this.anio,
    required this.disponibilidad,
    required this.autoId,
  });

  @override
  State<DetalleVehiculoScreen> createState() => _DetalleVehiculoScreenState();
}

class _DetalleVehiculoScreenState extends State<DetalleVehiculoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Detalle del vehículo",
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
                  SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      widget.imageUrl,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Marca: ",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.marca,
                        style:
                            const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                       Text(
                        "Modelo: ${widget.marca}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Año: ${widget.anio}",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        widget.anio,
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Disponibilidad: ${widget.disponibilidad}",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                      Text(
                        widget.disponibilidad > 0 ? "Disponible" : "No disponible",
                        style: const TextStyle(fontSize: 20, color: Colors.green),
                      )
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: widget.disponibilidad > 0
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mediopago()));
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                    backgroundColor: widget.disponibilidad > 0
                        ? Colors.red
                        : Colors.grey),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_car, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      "Alquilar vehículo",
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
