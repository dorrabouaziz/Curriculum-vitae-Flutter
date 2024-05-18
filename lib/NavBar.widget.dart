import 'dart:math';
import 'package:flutter/material.dart';

typedef ToggleTheme = void Function();

class NavBar extends StatefulWidget {
  final ToggleTheme toggleTheme;

  NavBar(this.toggleTheme);
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool _isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // Perspective
        ..rotateY(_isDrawerOpen ? -pi / 2 : 0), // Rotation along Y-axis
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: GestureDetector(
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
        child: Drawer(
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
                              leading: Icon(Icons.person, color: Colors.black),
                              title: Text(
                                'Profil',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, "/profile");
                              },
                            ),
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
                                Navigator.pushNamed(context, "/experience");
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.brightness_auto,
                                  color: Colors.black),
                              title: Text(
                                'Compétences',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/competence');
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.workspace_premium,
                                  color: Colors.black),
                              title: Text(
                                'Certificats',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/Certificat');
                              },
                            ),
                            ListTile(
                              leading:
                                  Icon(Icons.workspaces, color: Colors.black),
                              title: Text(
                                'Projets',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/projet');
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.flag, color: Colors.black),
                              title: Text(
                                'Langues',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/langues');
                              },
                            ),
                            ListTile(
                              leading:
                                  Icon(Icons.location_on, color: Colors.black),
                              title: Text(
                                'Localisation',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/localisation');
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.document_scanner,
                                  color: Colors.black),
                              title: Text(
                                'CV',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/CV');
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.brightness_6, color: Colors.black),
                              title: Text(
                                'Changer le thème',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: widget.toggleTheme,
                            ),




                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
