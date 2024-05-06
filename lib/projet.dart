import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv/NavBar.widget.dart';

class Projet extends StatelessWidget {
  final List<String> projetImages = [
    'assets/fo2.JPG',
    'assets/industry.jpg',
    'assets/proj.jpg',
    'assets/lum.JPG',
  ];
  final List<String> projetTexts = [
    "Système de gestion de qualité des tomates dans les industries basé sur l'IOT et l'intelligence artificielle",
    "Système de contrôle d'incendie dans les industries basé sur l'IoT",
    "Kit médical qui permet de gérer à distance les cas atteints de Corona Virus basé sut l'iot et l'intelligence artificielle  ",
    'Système domotique de contrôle de lumière',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Projets',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFCE8F8A),
      ),
      drawer: NavBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFFF5EFE6), // Couleur de fond
              borderRadius: BorderRadius.circular(20), // Bordures arrondies
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                  spreadRadius: 5, // Étendue de l'ombre
                  blurRadius: 7, // Flou de l'ombre
                  offset: Offset(0, 3), // Décalage de l'ombre
                ),
              ],
            ),
            child: Text(
              "Cliquer sur les images pour voir "
                  "les détails des projets",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Couleur du texte
              ),
              textAlign: TextAlign.center, // Alignement centré du texte
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 2,
              ),
              itemCount: projetImages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _showCertificatDetail(context, projetImages[index], projetTexts[index]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        projetImages[index],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showCertificatDetail(BuildContext context, String imagePath, String certifText) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              certifText,
              textAlign: TextAlign.left,
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Fermer'),
          ),
        ],
      ),
    );
  }
}
