import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:linkmi2024/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  // ignore: library_private_types_in_public_api
=======
import 'package:linkmi2024/bienvenidascreen.dart';

class SplashScreen extends StatefulWidget {

  @override
>>>>>>> 40a49c2c8d2dacad6791bca80f3c23b81a41b839
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToWelcome();
  }

  _navigateToWelcome() async {
<<<<<<< HEAD
    await Future.delayed(const Duration(seconds: 3), () {});
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
=======
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => BienvenidaScreen()),
>>>>>>> 40a49c2c8d2dacad6791bca80f3c23b81a41b839
    );
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const Scaffold(
=======
    return Scaffold(
>>>>>>> 40a49c2c8d2dacad6791bca80f3c23b81a41b839
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}