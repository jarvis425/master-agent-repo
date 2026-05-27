import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  const ProfileCard({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(name),
      ),
    );
  }
}