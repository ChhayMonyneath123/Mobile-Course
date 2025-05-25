import 'package:flutter/material.dart';

class TeacherCard extends StatelessWidget {
  final String name;
  final String title;
  const TeacherCard({required this.name, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(radius: 30),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(title, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
