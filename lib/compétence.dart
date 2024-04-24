import 'package:flutter/material.dart';
import 'package:cv/NavBar.widget.dart';

class Competence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Compétences',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFCE8F8A),
      ),
      drawer: NavBar(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _buildSkillCard(
            skillName: 'Laravel',
            level: 0.7,
          ),
          _buildSkillCard(
            skillName: 'SpringBoot',
            level: 0.5,
          ),
          _buildSkillCard(
            skillName: 'Vue Js',
            level: 0.5,
          ),
          _buildSkillCard(
            skillName: 'Angular',
            level: 0.8,
          ),
          _buildSkillCard(
            skillName: 'Flutter',
            level: 0.7,
          ),
          _buildSkillCard(
            skillName: 'BI',
            level: 0.9,
          ),
          _buildSkillCard(
            skillName: 'ML',
            level: 0.6,
          ),
          _buildSkillCard(
            skillName: 'Jira',
            level: 0.8,
          ),
          _buildSkillCard(
            skillName: 'Azure Devops',
            level: 0.8,
          ),
          _buildSkillCard(
            skillName: 'Selenium',
            level: 0.8,
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard({
    required String skillName,
    required double level,
  }) {
    return Card(
      color: Color(0xFFF5EFE6),
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skillName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            AnimatedProgressBar(
              level: level,
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedProgressBar extends StatefulWidget {
  final double level;

  AnimatedProgressBar({required this.level});

  @override
  _AnimatedProgressBarState createState() => _AnimatedProgressBarState();
}

class _AnimatedProgressBarState extends State<AnimatedProgressBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 0, end: widget.level).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: _animation.value,
      backgroundColor: Colors.grey[300],
      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFEBACA2)),
    );
  }
}
