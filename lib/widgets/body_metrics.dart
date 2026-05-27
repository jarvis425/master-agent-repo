import 'package:flutter/material.dart';
class BodyMetrics extends StatefulWidget {
  const BodyMetrics({Key? key}) : super(key: key);
  @override
  State<BodyMetrics> createState() => _BodyMetricsState();
}
class _BodyMetricsState extends State<BodyMetrics> {
  int _age = 0;
  double _weight = 0;
  double _height = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'Age',
          ),
          onChanged: (value) {
            setState(() {
              _age = int.parse(value);
            });
          },
        ),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Weight',
          ),
          onChanged: (value) {
            setState(() {
              _weight = double.parse(value);
            });
          },
        ),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Height',
          ),
          onChanged: (value) {
            setState(() {
              _height = double.parse(value);
            });
          },
        ),
      ],
    );
  }
}