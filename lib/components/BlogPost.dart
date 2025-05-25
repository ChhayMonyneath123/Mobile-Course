import 'package:flutter/material.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left: Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/meeting.png', // 🛠 Make sure the path is correct
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 5),

            // Right: Text + Tags
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '“Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate”',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    'Dr. Valy Dona  |  Professor @ITC, Cofounder @ Worktency',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Wrap(
                    spacing: 4,
                    runSpacing: -10, // 👈 reduce this to bring them closer
                    children: const [
                      TagLabel(text: 'Machine learning', icon: Icons.school),
                      TagLabel(text: 'Artificial Intelligent', icon: Icons.psychology),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TagLabel extends StatelessWidget {
  final String text;
  final IconData icon;

  const TagLabel({required this.text, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, size: 14, color: Colors.blue),
      label: Text(
        text,
        style: const TextStyle(color: Colors.blue, fontSize: 11),
      ),
      backgroundColor: const Color(0xFFF5F6FF),
      side: BorderSide.none,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}

