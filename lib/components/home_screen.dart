import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'course_carousel.dart';
import 'category_slider.dart';
import 'footer_links.dart';
import 'bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/worktency_logo.png',
                  height: 32,
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.blue[900]),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.blue[900]),
              onPressed: () {},
            ),
          ],
        ),
      ),

      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            children: [
              const SearchBarWidget(),
              const SizedBox(height: 30),

              // First carousel with arrow and title
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
              const FooterLinks(),
              const SizedBox(height: 100), // to avoid being blocked by nav bar
            ],
          ),

          // Floating nav bar
          BottomNavBar(
            currentIndex: 2,
            onTap: (index) {
              // TODO: Handle navigation or state change
            },
          ),
        ],
      ),
    );
  }
}
