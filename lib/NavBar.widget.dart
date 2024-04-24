import 'dart:math';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool _isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFCE8F8A),
                  Color(0xFFF5EFE6),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child: AnimatedContainer(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001) // Perspective
                ..rotateY(_isDrawerOpen ? -pi / 2 : 0), // Rotation along Y-axis
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Container(
                width: 220.0,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DrawerHeader(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage("assets/dorra.jpg"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Dorra Bouaziz",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.school, color: Colors.black),
                            title: Text(
                              'Education',
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, "/education");
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.work, color: Colors.black),
                            title: Text(
                              'Expérience',
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context,"/experience");
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.brightness_auto, color: Colors.black),
                            title: Text(
                              'Compétences',
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context,'/competence');
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.home, color: Colors.black),
                            title: Text(
                              'Certificats',
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              // Add your navigation logic here
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.home, color: Colors.black),
                            title: Text(
                              'Manifestations',
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              // Add your navigation logic here
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.logout, color: Colors.black),
                            title: Text(
                              'Déconnexion',
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              // Add your navigation logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx < 0) {
                setState(() {
                  _isDrawerOpen = true;
                });
              } else {
                setState(() {
                  _isDrawerOpen = false;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}