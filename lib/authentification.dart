import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';

class Authentification extends StatefulWidget {

  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  late SharedPreferences prefs;

  String? errorMessage='';
  bool isLogin=true;
  TextEditingController txt_Email = TextEditingController();
  TextEditingController txt_password = TextEditingController();
  Future<void> signInWithEmailAndPassword()async{
    try{
      await Auth().signInWithEmailAndPassword(email: txt_Email.text, password: txt_password.text);
    }on FirebaseAuthException catch(e){
      setState(() {
        errorMessage=e.message;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/profile.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  child: Image.asset(
                    'assets/login.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: txt_Email,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Identifiant",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 5),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: txt_password,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Mot de passe",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 5),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      _onAuthentifier(context);
                    },
                    child: Text("Connexion"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                      primary: Color(0xFFCE8F8A),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/inscription');
                  },
                  child: Text(
                        "S'inscrire",
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/profile');
                  },

                  child: Text(
                    "Retour",
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future<void> _onAuthentifier(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    String log = prefs.getString("login") ?? '';
    String psw = prefs.getString("password") ?? '';

    prefs.setBool("connecte", true);
    if (txt_Email.text == log && txt_password.text == psw) {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/education');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Vérifier votre Id ou votre mot de passe'),
        ),
      );
    }
  }
}

