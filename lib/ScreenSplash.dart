import 'dart:async';
import 'package:cv/Profile.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback toggleTheme;

  SplashScreen({required this.toggleTheme});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progressValue = 0.0; // Définissez la valeur initiale de la barre de progression à 0.0

  @override
  void initState() {
    super.initState();
    // Définissez une temporisation pour afficher l'écran de démarrage pendant quelques secondes avant de passer à l'écran suivant
    Timer.periodic(Duration(milliseconds: 500), (Timer timer) {
      // Mise à jour de la valeur de la barre de progression chaque demi-seconde
      setState(() {
        _progressValue += 0.1; // Augmentez la valeur de la barre de progression
        if (_progressValue >= 1.0) {
          timer.cancel(); // Arrêtez le timer lorsque la valeur de la barre de progression atteint 1.0
          // Naviguez vers l'écran principal de votre application (par exemple, votre écran de CV)
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => Profile(toggleTheme: widget.toggleTheme),
            ),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/cv.png',
            width: 100,
            height: 100,),
            SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFCE8F8A)),
                value: _progressValue,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Mon Application CV',
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
