import 'package:cv/NavBar.widget.dart';
import 'package:cv/Profile.dart';
import 'package:cv/authentification.dart';
import 'package:cv/comp%C3%A9tence.dart';
import 'package:cv/education.dart';
import 'package:cv/experience.dart';
import 'package:cv/inscription.dart';
import 'package:firebase_core/firebase_core.dart';
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
      home: Profile(), // Set the initial route
      routes: { // Define named routes for navigation
        '/authentification': (context) => Authentification(),
        '/profile': (context)=>Profile(),
        '/inscription': (context)=>Inscription(),
        '/education': (context)=>Education(),
        '/experience':(context)=>Experience(),
        '/competence': (context)=>Competence()

      },
    );
  }
}
