import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_message/login/login_screen.dart';

import 'home_screen.dart';

final Shader linearGradient = const LinearGradient(
  colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      if (FirebaseAuth.instance.currentUser == null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (ctx) => LoginScreen()),
            (route) => false);
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (ctx) => const HomeScreen()),
            (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 50.0),
          Flexible(
            child: Hero(
              tag: 'logo',
              child: Center(
                child: Container(
                  //height: 200.0,
                  child: Image.asset('images/11.jpg'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: Text(
              "Message",
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
