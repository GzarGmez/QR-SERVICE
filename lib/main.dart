import 'package:flutter/material.dart';
import 'package:integrador/Pages/Register_User.dart';
import 'package:integrador/Pages/home_admin.dart';
import 'package:integrador/Pages/home_page.dart' as home_page;
import 'package:integrador/Pages/ScannerQr.dart' as scanner_qr;
import 'package:integrador/Pages/home_user.dart';
import 'pages/user_view.dart';
import 'pages/admin_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => home_page.HomePage(), 
        '/user': (context) => UserView(),
        '/admin': (context) => AdminView(),
        '/register': (context) => RegisterView(),
        '/userDashboard': (context) => UserDashboardView(),
        '/scannerQr': (context) => scanner_qr.ScannerQr(),
        '/homeAdmin': (context) => HomeAdminView(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Esperar 3 segundos y redirigir a la página principal
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/LogoUp.png', 
              height: 300,
              width: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Bienvenido a la App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 8, 221, 221),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
