import 'package:cv/CV.dart';
import 'package:cv/NavBar.widget.dart';
import 'package:cv/Profile.dart';
import 'package:cv/ScreenSplash.dart';

import 'package:cv/certificat.dart';
import 'package:cv/competence.dart';
import 'package:cv/education.dart';
import 'package:cv/experience.dart';
import 'package:cv/langue.dart';
import 'package:cv/position.dart';

import 'package:cv/projet.dart';

import 'package:flutter/material.dart';

void main()   {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculm Vitae', // Add a descriptive title for the app
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Optionally customize the app's theme (colors, fonts, etc.)
      ),
      home: SplashScreen(), // Set the initial route
      routes: { // Define named routes for navigation

        '/profile': (context)=>Profile(),
        '/education': (context)=>Education(),
        '/experience':(context)=>Experience(),
        '/competence': (context)=>Competence(),
        '/Certificat':(context)=>Certificat(),
        '/projet' : (context)=>Projet(),
        '/localisation':(context)=>WebViewMap(),
        '/CV':(context)=>CV(),
        '/langues':(context)=>LanguagePage()


      },
    );
  }
}
