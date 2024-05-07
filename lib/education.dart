import 'package:cv/NavBar.widget.dart';
import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  final VoidCallback toggleTheme;

  Education({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Education',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFCE8F8A),
      ),
      drawer: NavBar(toggleTheme),
      body: ListView(
        children: [
          Expanded(
            child: Card(
              color: Color(0xFFF5EFE6),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.school),
                    Text(
                      "Baccalauréat en sciences expérimentales",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Lycée 15 Novembre 1956",
                          style: TextStyle(fontSize: 14),
                        ),
                    SizedBox(width: 80),
                    Text(
                      "2018-2019",
                      style: TextStyle(fontSize: 14),
                    ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Image.asset(
                        'assets/bac.jpg',
                        height: 200,
                        width: 200,
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
                    Icon(Icons.school),
                    Text(
                      "Licence nationale en ingénerie des systèmes informatiques",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Faculté des sciences de Sfax",
                          style: TextStyle(fontSize: 14),
                        ),

                    SizedBox(width: 70),
                    Text(
                      "2019-2022",
                      style: TextStyle(fontSize: 14),
                    ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Image.asset(
                        'assets/licence.jpg',
                        height: 200,
                        width: 200,
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
                    Icon(Icons.school),

                    Text(

                      "Ingénerie Génie logiciel et informatique décisionnel",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "IIT",
                          style: TextStyle(fontSize: 14),
                        ),

                    SizedBox(width: 220),
                    Text(
                      "2022-2025",
                      style: TextStyle(fontSize: 14),
                    ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Image.asset(
                        'assets/diplome.png',
                        height: 200,
                        width: 200,
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
