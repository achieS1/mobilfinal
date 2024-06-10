import 'package:flutter/material.dart';
import '../main.dart';

class SplashScreen extends StatelessWidget {
  final VoidCallback toggleTheme;

  const SplashScreen({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => MainPage(toggleTheme: toggleTheme)));
    });

    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('assets/image/porsche1.jpg', fit: BoxFit.fill),
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
