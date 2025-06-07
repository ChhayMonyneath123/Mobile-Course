import 'package:flutter/material.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Image.asset('assets/images/worktency_logo.png', height: 32),
            ],
          ),
        ),
        Divider(),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'About Us',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Contact Us',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('FAQs', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    'Community Forum',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Term of Service',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Careers',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Leadership',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Blog', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              // Right column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Social Impact',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Cookies Setting',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Terms', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    'Accessibility Statement',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Investors',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'GO Pro Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Affiliate',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),
        const Center(
          child: Text(
            'Certified',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
            ),
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              'assets/images/itc_logo.png', // Replace with your logo filename
              height: 80,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.facebook, size: 32),
            SizedBox(width: 16),
            Icon(
              Icons.linked_camera_outlined,
              size: 32,
            ), // You can replace with LinkedIn icon
            SizedBox(width: 16),
            Icon(Icons.play_circle_fill, size: 32), // YouTube
          ],
        ),
        const SizedBox(height: 20),
        const Center(
          child: Text('2023 © Worktency, Inc. All rights reserved.'),
        ),
        const SizedBox(height: 200),
      ],
    );
  }
}
