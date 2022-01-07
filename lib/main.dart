import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screen/splash_screen.dart';
import 'login/login_screen.dart';
import 'login/registration.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        //WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        // AdminDashboard.id: (context) => const AdminDashboard(),
      },
    );
  }
}
