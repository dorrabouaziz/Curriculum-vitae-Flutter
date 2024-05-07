import 'package:cv/NavBar.widget.dart';
import 'package:flutter/material.dart';

class Language {
  final String name;
  final String level;
  final String description;

  // Calculate the number of filled circles based on level
  int get filledCircles {
    switch (level.toLowerCase()) {
      case 'débutant':
        return 3;
      case 'intermédiaire':
        return 4;
      case 'avancé':
        return 5;
      default:
        return 0;
    }
  }

  Language(this.name, this.level, this.description);
}

class LanguagePage extends StatefulWidget {
  final VoidCallback toggleTheme;

  LanguagePage({required this.toggleTheme});

  @override
  _CVPageState createState() => _CVPageState(toggleTheme: toggleTheme);
}

class _CVPageState extends State<LanguagePage> {
  final List<Language> languages = [
    Language('Arabe', 'Avancé', 'C1 et C2: utilisateur expérimenté'),
    Language('Français', 'Intermédiaire', 'B1 et B2: utilisateur indépendant'),
    Language('Anglais', 'Débutant', 'A1 et A2: utilisateur de base'),
  ];

  late Map<String, Color> colorMap;
  final VoidCallback toggleTheme;

  _CVPageState({required this.toggleTheme});

  @override
  void initState() {
    super.initState();
    colorMap = {
      'débutant': Colors.red,
      'intermédiaire': Colors.cyan,
      'avancé': Colors.green,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Langues',
            style: TextStyle(fontSize: 25, color: Colors.white)),
        backgroundColor: Color(0xFFCE8F8A),
      ),
      drawer: NavBar(toggleTheme),
      body: Column(
        children: [
          SizedBox(height: 3),
          Image.asset('assets/langues.gif'),
          SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final language = languages[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: _LanguageCube(language: language, colorMap: colorMap),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageCube extends StatefulWidget {
  final Language language;
  final Map<String, Color> colorMap;

  const _LanguageCube({required this.language, required this.colorMap});

  @override
  __LanguageCubeState createState() => __LanguageCubeState();
}

class __LanguageCubeState extends State<_LanguageCube>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000), // Adjust animation duration here
    );
    _animation = Tween<double>(begin: 0.0, end: widget.language.filledCircles.toDouble())
        .animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 5.0)
        ],
        color: Color(0xFFF5EFE6),
      ),
      child: Row(
        children: [
          // Flag icon
          Row(
            children: [
              Icon(
                Icons.flag, // Replace with your flag icon
                size: 20.0,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.language.name,
                    style:
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.language.level,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    widget.language.description,
                    style: TextStyle(fontSize: 12.0,color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ],
            ),
          ),
          SizedBox(width: 10.0),
          Row(
            children: List.generate(
              5,
                  (index) => AnimatedBuilder(
                animation: _controller,
                builder: (context, child) => Container(
                  width: 20.0,
                  height: 20.0,
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index < _animation.value
                        ? widget.colorMap[widget.language.level.toLowerCase()] ??
                        Colors.grey
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}