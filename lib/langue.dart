import 'package:cv/NavBar.widget.dart';
import 'package:flutter/material.dart';

class Language {
  final String name;
  final String level;

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

  Language(this.name, this.level);

// Get the appropriate flag icon based on language name (add this method if needed)
// ...
}

class LanguagePage extends StatefulWidget {
  @override
  _CVPageState createState() => _CVPageState();
}

class _CVPageState extends State<LanguagePage> {
  final List<Language> languages = [
    Language('Arabe', 'Avancé'),
    Language('Français', 'Intermédiaire'),
    Language('Anglais', 'Débutant'),
  ];

  late Map<String, Color> colorMap;

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
      drawer: NavBar(),
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

class _LanguageCube extends StatelessWidget {
  final Language language;
  final Map<String, Color> colorMap;

  const _LanguageCube({required this.language, required this.colorMap});

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
          // Add flag icon here (modify based on your chosen package)
          Icon(
            Icons.flag, // Replace with your flag icon
            size: 20.0,
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  language.name,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  language.level,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          SizedBox(width: 10.0),
          Row(
            children: List.generate(
              5,
              (index) => Container(
                width: 20.0,
                height: 20.0,
                margin: EdgeInsets.symmetric(horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index < language.filledCircles
                      ? colorMap[language.level.toLowerCase()] ?? Colors.grey
                      : Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
