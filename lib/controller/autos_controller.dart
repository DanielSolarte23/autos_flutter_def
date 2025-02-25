import 'dart:convert';
import 'package:http/http.dart' as http;

class AutosController {
  final String baseUrl = 'https://backend-alquiler-autos-rz0d.onrender.com/api/autos';

  //Metodo para obtener vehiculos disponibles
  Future<List<Map<String, dynamic>>> obtenerAutosDisponibles() async {
    try {
      final url = Uri.parse('$baseUrl');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);

        //convertir los datos a una lista de mapas
        return data.map((auto){
          return {
            'marca': auto['marca'],
            'modelo': auto['modelo'],
            'anio': auto['anio'],
            'disponibilidad': auto['disponibilidad'],
            'imageUrl': auto['imagen'] ?? 'https://via.placeholder.com/150',
            'precio' : auto['valorAlquiler'] != null ? '\$${auto['valorAlquiler']}/dia'
          };
      }).toList();
      } else {
        throw Exception('Error al obtener vehiculos');
      }
    } catch (e) {
      print('Error al obtener Autos Disponibles: $e');
      return[];
    }
  }
}