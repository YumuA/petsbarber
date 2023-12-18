import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  var nombreUsuario = 'test'; 
  

  PrincipalPage({required this.nombreUsuario});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Principal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bienvenido, $nombreUsuario',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCard('Agendar cita 1'),
                _buildCard('Agendar cita 2'),
                _buildCard('Agendar cita 3'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30, width: 50,),
            ElevatedButton(
              onPressed: () {
                // Agregar acción al hacer clic en la carta
                print('Clic en $title');
              },
              child: Text('Ir'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PrincipalPage(nombreUsuario: 'Credenciales nombre'),
  ));
}
