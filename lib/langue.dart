import 'package:flutter/material.dart';



class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  List<LanguageProgress> languages = [
    LanguageProgress(name: 'Spanish', level: 0.75, color: Colors.blue),
    LanguageProgress(name: 'English', level: 0.5, color: Colors.green),
    LanguageProgress(name: 'German', level: 0.25, color: Colors.orange),
    LanguageProgress(name: 'Italian', level: 0.6, color: Colors.purple),
    LanguageProgress(name: 'Japanese', level: 0.8, color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Learning'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: languages.map((language) => _LanguageProgressIndicator(language)).toList(),
        ),
      ),
    );
  }
}

class LanguageProgress {
  final String name;
  final double level;
  final Color color;

  LanguageProgress({required this.name, required this.level, required this.color});
}

class _LanguageProgressIndicator extends StatelessWidget {
  final LanguageProgress language;

  const _LanguageProgressIndicator(this.language);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Text(language.name),
          const SizedBox(width: 16),
          Expanded(
            child: SizedBox(
              height: 50,
              child: CircularProgressIndicator(
                value: language.level,
                valueColor: AlwaysStoppedAnimation<Color>(language.color),

                backgroundColor: language.color.withOpacity(0.2),
                strokeWidth: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
