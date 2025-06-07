import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 24,
      right: 24,
      bottom: 20,
      child: Material(
        color: Colors.transparent, // Makes the outer container transparent
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Inner nav bar background
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.black54,
              backgroundColor: Colors.white, // nav bar fill color
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              onTap: onTap,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.assignment),
                  label: 'My courses',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_fill),
                  label: 'Online course',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.layers),
                  label: 'Category',
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
