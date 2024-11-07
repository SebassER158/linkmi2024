import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:linkmi2024/apis/apis.dart';
import 'package:linkmi2024/bienvenidascreen.dart';
import 'package:linkmi2024/variables/globals.dart';

class LoginScreen extends StatefulWidget {
  // ignore: use_super_parameters
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
=======

class LoginScreen extends StatefulWidget {
  @override
>>>>>>> 40a49c2c8d2dacad6791bca80f3c23b81a41b839
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
<<<<<<< HEAD
  final TextEditingController _curpController = TextEditingController();

  Future<void> _verificarCURP() async {
    String curp = _curpController.text.trim();
    if (curp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, ingresa tu CURP')),
      );
      return;
    }

    var response =
        await Apis().getValoresByCurp(Globals.cuenta, Globals.tblUsers, curp);

    if (response.statusCode == 200) {
      // if (response.body.length != 2) {
      // var data = jsonDecode(response.body);
      // print(data);
      // }
    }

    bool existeCurp = await response.body.length != 2 ? true : false;
    print(" la variable es $existeCurp");
    if(existeCurp){

    }else{
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const BienvenidaScreen()),
=======
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
>>>>>>> 40a49c2c8d2dacad6791bca80f3c23b81a41b839
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 2, 58, 143), Color.fromARGB(255, 2, 34, 82)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'LINKMI',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Hola 👋 si ya estás registrado, ingresa tu CURP',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _curpController,
                          decoration: const InputDecoration(
                            hintText: 'CURP',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _verificarCURP,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[900],
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Comenzar', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
=======
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
>>>>>>> 40a49c2c8d2dacad6791bca80f3c23b81a41b839
        ),
      ),
    );
  }
<<<<<<< HEAD
=======

  @override
  void dispose() {
    _curpController.dispose();
    super.dispose();
  }
>>>>>>> 40a49c2c8d2dacad6791bca80f3c23b81a41b839
}
