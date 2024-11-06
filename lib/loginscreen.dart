import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _curpController = TextEditingController();

  void _login() {
    String curp = _curpController.text;
    // Aquí puedes agregar la lógica para manejar el CURP
    if (curp.isNotEmpty) {
      // Simular inicio de sesión o validación del CURP
      print('CURP ingresado: $curp');
      // Navegar a la siguiente pantalla si es necesario
    } else {
      // Mostrar un mensaje de error si el CURP está vacío
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor ingrese su CURP')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ingrese su CURP para continuar',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _curpController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CURP',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Iniciar Sesión'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _curpController.dispose();
    super.dispose();
  }
}
