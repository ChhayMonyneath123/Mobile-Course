import 'package:flutter/material.dart';
import 'course_carousel.dart';
import 'category_slider.dart';

class DefaultContent extends StatelessWidget {
  const DefaultContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CourseCarousel(
          title: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 4),
            child: Row(
              children: [
                Image.asset('assets/images/arrow1.png', height: 20),
                const SizedBox(width: 8),
                const Text(
                  'Explore your favorite subjects!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),

        CourseCarousel(
          title: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 4),
            child: Row(
              children: [
                Image.asset('assets/images/arrow1.png', height: 20),
                const SizedBox(width: 8),
                const Text(
                  'Build your competency with us!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),

        CourseCarousel(
          title: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 4),
            child: Row(
              children: [
                Image.asset('assets/images/arrow1.png', height: 20),
                const SizedBox(width: 8),
                const Text(
                  'Best recommended for you!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),

        const CategorySlider(),
        const SizedBox(height: 30),
      ],
    );
  }
}
