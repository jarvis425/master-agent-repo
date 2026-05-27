import 'package:flutter/material.dart';
class TargetAreas extends StatefulWidget {
  const TargetAreas({Key? key}) : super(key: key);
  @override
  State<TargetAreas> createState() => _TargetAreasState();
}
class _TargetAreasState extends State<TargetAreas> {
  List<String> _selectedTargetAreas = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedTargetAreas.add('Legs');
            });
          },
          child: const Text('Legs'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedTargetAreas.add('Arms');
            });
          },
          child: const Text('Arms'),
        ),
      ],
    );
  }
}