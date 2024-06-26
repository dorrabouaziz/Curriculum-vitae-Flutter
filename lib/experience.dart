import 'package:flutter/material.dart';
import 'package:cv/NavBar.widget.dart';

class Experience extends StatelessWidget {
  final VoidCallback toggleTheme;

  Experience({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    // Obtenez le thème actuel de l'application
    ThemeData currentTheme = Theme.of(context);

    // Déterminez la couleur du texte en fonction du thème actuel
    Color iconColor = currentTheme.brightness == Brightness.dark ? Colors.black : Colors.black;
    Color textColor = currentTheme.brightness == Brightness.dark ? Colors.black : Colors.black;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCE8F8A),
        title: Text(
          'Expérience',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),

      drawer: NavBar(toggleTheme),
      body: ListView(
        scrollDirection: Axis.horizontal,
          children: [
            Expanded(
              child: Card(

                color: Color(0xFFF5EFE6),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.work , color: iconColor),

                      Text(
                        " Stage à Smart Ways Innovation",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
                      ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Localité : Sfax",
                                style: TextStyle(fontSize: 14 , color: textColor),
                              ),
                              SizedBox(width: 160),
                              Text(
                                "Date :2021",
                                style: TextStyle(fontSize: 14, color: textColor),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("- Intelligence artificielle, Machine Learning\n"
                              "- Développement Embarqué : Programmation \n en utilisant Python et Langage C \n"
                              "- Développement Mobile : Une application Android \n avec la plateforme Google Firebase Cloud \n"
                              "- Développement Web : Une application Web \n sur le Framework Angular avec Firebase Cloud \n"
                              "- Prototype", style: TextStyle(
                            color: textColor
                          ),

                          ),
                        ],
                      ),

                      Center(
                        child: Image.asset(
                          'assets/attes1.JPG',
                          height: 280,
                          width: 340,
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),
            Expanded(
              child: Card(

                color: Color(0xFFF5EFE6),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.work , color: iconColor),

                          Text(
                            " Stage à Smart Ways Innovation",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Localité : Sfax",
                                style: TextStyle(fontSize: 14, color: textColor),
                              ),
                              SizedBox(width: 160),
                              Text(
                                "Date :2022",
                                style: TextStyle(fontSize: 14, color: textColor),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("- Système de gestion de contrôle de qualité \n des tomates\n"
                              "- Développement Embarqué  \n"
                              "- Développement Mobile : Une application Android \n avec la plateforme Google Firebase Cloud \n"
                              "- Développement Web : Une application Web \n sur le Framework Angular avec Firebase Cloud \n"
                              "- Prototype", style: TextStyle(
                              color: textColor
                          ),

                          ),
                        ],
                      ),

                      Center(
                        child: Image.asset(
                          'assets/attes2.JPG',
                          height: 280,
                          width: 340,
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),


            Expanded(
              child: Card(

                color: Color(0xFFF5EFE6),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.work , color: iconColor),

                          Text(
                            " Stage à Clinisys",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Localité : Sfax",
                                style: TextStyle(fontSize: 14, color: textColor),
                              ),
                              SizedBox(width: 150),
                              Text(
                                "Date :2023",
                                style: TextStyle(fontSize: 14, color: textColor),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("- Application Web Full-Stack intitulé Appel d'offre\n"
                              "- Backend : SpringBoot \n"
                              "- Base de données : SQL", style: TextStyle(
                            color: textColor
                          ),

                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Center(
                        child: Image.asset(
                          'assets/attes3.jpg',
                          height: 350,
                          width: 350,
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),
            Expanded(
              child: Card(

                color: Color(0xFFF5EFE6),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.work , color: iconColor),

                          Text(
                            " Stage à Freedom Of Dev Services",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Localité : Sfax",
                                style: TextStyle(fontSize: 14, color: textColor),
                              ),
                              SizedBox(width: 130),
                              Text(
                                "Date :2024",
                                style: TextStyle(fontSize: 14, color: textColor),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("- Application Web Full-Stack intitulé Parc \n informatique\n"
                              "- Backend : SpringBoot \n"
                              "- Frontend : Angular\n"
                              "- Base de données : SQL  MySQL Workbench\n"
                              "- Cadre de travail : Scrum", style: TextStyle(
                              color: textColor
                          ),

                          ),
                        ],
                      ),


                      Center(
                        child: Image.asset(
                          'assets/chargement.gif',
                          height: 280,
                          width: 340,
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),
          ],
        ),


    );
  }
}



