import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/profile.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/dorra.jpg",
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Color(0xFFCE8F8A), // Couleur de fond de la carte
                      borderRadius: BorderRadius.circular(10.0), // Coins arrondis de la carte
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // Texte à afficher
                            "Etudiante ingénieure en informatique enthousiaste et créative, à la recherche de défis stimulants et "
                                "d'opportunités d'apprentissage pour développer mes compétences et contribuer à la conception de "
                                "solutions innovantes.",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/authentification');
                    },
                    child: Text("Cliquer ici pour plus de détails", style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline

                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
