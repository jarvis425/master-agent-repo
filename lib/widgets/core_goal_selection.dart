import 'package:flutter/material.dart';
class CoreGoalSelection extends StatefulWidget {
  const CoreGoalSelection({Key? key}) : super(key: key);
  @override
  State<CoreGoalSelection> createState() => _CoreGoalSelectionState();
}
class _CoreGoalSelectionState extends State<CoreGoalSelection> {
  List<String> _selectedCoreGoals = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedCoreGoals.add('Build Muscle');
            });
          },
          child: const Text('Build Muscle'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedCoreGoals.add('Increase Height');
            });
          },
          child: const Text('Increase Height'),
        ),
      ],
    );
  }
}