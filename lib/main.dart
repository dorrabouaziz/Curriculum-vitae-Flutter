import 'package:cv/AppTheme.dart';
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
import 'package:provider/provider.dart';
import 'package:cv/projet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculm Vitae',
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: SplashScreen(toggleTheme: _toggleTheme),
      routes: {
        '/profile': (context) => Profile(toggleTheme: _toggleTheme),
        '/education': (context) => Education(toggleTheme: _toggleTheme), // Added the missing parameter here,
        '/experience': (context) => Experience(toggleTheme: _toggleTheme), // Added the missing parameter here),
        '/competence': (context) => Competence(toggleTheme: _toggleTheme), // Added the missing parameter here),
        '/Certificat': (context) => Certificat(toggleTheme: _toggleTheme), // Added the missing parameter here),
        '/projet': (context) => Projet(toggleTheme: _toggleTheme),
        '/localisation': (context) => WebViewMap(toggleTheme: _toggleTheme),
        '/CV': (context) => CV(toggleTheme: _toggleTheme), // Added the missing parameter here),
        '/langues': (context) => LanguagePage(toggleTheme: _toggleTheme),
      },
    );
  }
}