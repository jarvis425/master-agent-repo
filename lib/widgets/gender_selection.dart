import 'package:flutter/material.dart';
class GenderSelection extends StatefulWidget {
  const GenderSelection({Key? key}) : super(key: key);
  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}
class _GenderSelectionState extends State<GenderSelection> {
  String _selectedGender = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedGender = 'Male';
            });
          },
          child: const Text('Male'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedGender = 'Female';
            });
          },
          child: const Text('Female'),
        ),
      ],
    );
  }
}