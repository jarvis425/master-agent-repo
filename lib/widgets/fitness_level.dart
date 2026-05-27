import 'package:flutter/material.dart';
class FitnessLevel extends StatefulWidget {
  const FitnessLevel({Key? key}) : super(key: key);
  @override
  State<FitnessLevel> createState() => _FitnessLevelState();
}
class _FitnessLevelState extends State<FitnessLevel> {
  String _selectedFitnessLevel = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedFitnessLevel = 'Beginner';
            });
          },
          child: const Text('Beginner'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedFitnessLevel = 'Intermediate';
            });
          },
          child: const Text('Intermediate'),
        ),
      ],
    );
  }
}