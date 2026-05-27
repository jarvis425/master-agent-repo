import 'package:flutter/material.dart';
class EquipmentAccessMatrix extends StatefulWidget {
  const EquipmentAccessMatrix({Key? key}) : super(key: key);
  @override
  State<EquipmentAccessMatrix> createState() => _EquipmentAccessMatrixState();
}
class _EquipmentAccessMatrixState extends State<EquipmentAccessMatrix> {
  List<String> _selectedEquipmentAccess = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedEquipmentAccess.add('Full Gym');
            });
          },
          child: const Text('Full Gym'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedEquipmentAccess.add('Barbells');
            });
          },
          child: const Text('Barbells'),
        ),
      ],
    );
  }
}