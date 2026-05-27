import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  final int level;
  const LevelCard({Key? key, required this.level}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text('Level $level'),
      ),
    );
  }
}