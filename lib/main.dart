import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multiuser_authentication_appmaster1/pages/adminpage.dart';
import 'package:multiuser_authentication_appmaster1/pages/homepage.dart';
import 'package:multiuser_authentication_appmaster1/pages/loginpage.dart';
import 'package:multiuser_authentication_appmaster1/pages/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const SplashScreenPage(),
      'loginpage': (context) => const LoginPage(),
      'homepage': (context) => const Homepage(),
      'adminPage': (context) => const AdminPage(),
    },
  ));
}
