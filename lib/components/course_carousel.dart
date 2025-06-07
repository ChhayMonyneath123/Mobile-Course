import 'package:flutter/material.dart';
import 'recommendation_card.dart';

class CourseCarousel extends StatelessWidget {
  final Widget title;
  const CourseCarousel({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        const SizedBox(height: 10),
        SizedBox(
          height: 300,
          child: PageView.builder(
            itemCount: 3,
            controller: PageController(viewportFraction: 0.75),
            itemBuilder: (context, index) => const RecommendationCard(),
          ),
        )
      ],
    );
  }
}
