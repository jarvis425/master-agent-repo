import 'package:flutter/material.dart';
class HealthChecklistFilter extends StatefulWidget {
  const HealthChecklistFilter({Key? key}) : super(key: key);
  @override
  State<HealthChecklistFilter> createState() => _HealthChecklistFilterState();
}
class _HealthChecklistFilterState extends State<HealthChecklistFilter> {
  List<String> _selectedHealthChecklist = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedHealthChecklist.add('Knee Pain');
            });
          },
          child: const Text('Knee Pain'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedHealthChecklist.add('Hip Joints');
            });
          },
          child: const Text('Hip Joints'),
        ),
      ],
    );
  }
}