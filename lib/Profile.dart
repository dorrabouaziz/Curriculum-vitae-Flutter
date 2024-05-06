import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cv/NavBar.widget.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFCE8F8A),

      ),
      drawer: NavBar(),
      body: Column(


        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dorra.jpg'),
                  radius: 40,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dorra Bouaziz',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Etudiante ingénieure en informatique enthousiaste et créative, à la recherche de défis stimulants et "
                            "d'opportunités d'apprentissage pour développer mes compétences et contribuer à la conception de "
                            "solutions innovantes.",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 20),
                      Divider(thickness: 1, color: Colors.black),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.location_city),
                                  Text(
                                    ' Route El Ain ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.phone),
                                  Text(
                                    ' 51 380 720',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.date_range),
                                  Text(
                                    ' 03/06/2000',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text(
                                    ' Tunis',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(

                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.email),
                                      Text(
                                        ' bouazizdorra7@gmail.com',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Center(
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            _launchURL( 'https://www.linkedin.com/in/dorra-bouaziz');
                                          },
                                          child: Image.asset(
                                            'assets/linkedin.jpg',
                                            width: 60,
                                            height: 60,
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            _launchURL('https://github.com/DorraBouaziz');
                                          },
                                          child: Image.asset(
                                            'assets/github.png',
                                            width: 70,
                                            height: 70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _launchURL('tel:51380720');
                                    },
                                    child: Icon(
                                      Icons.phone,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),

                                  GestureDetector(
                                    onTap: () {
                                      _launchURL('mailto:bouazizdorra7@gmail.com');
                                    },
                                    child: Icon(
                                      Icons.email,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFCE8F8A)),
              color: Color(0xFFCE8F8A),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    _launchURL('tel:51380720');
                  },
                  child: Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL('mailto:bouazizdorra7@gmail.com');
                  },
                  child: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
