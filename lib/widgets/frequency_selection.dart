import 'package:flutter/material.dart';
class FrequencySelection extends StatefulWidget {
  const FrequencySelection({Key? key}) : super(key: key);
  @override
  State<FrequencySelection> createState() => _FrequencySelectionState();
}
class _FrequencySelectionState extends State<FrequencySelection> {
  int _selectedFrequency = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedFrequency = 3;
            });
          },
          child: const Text('3 days'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedFrequency = 5;
            });
          },
          child: const Text('5 days'),
        ),
      ],
    );
  }
}