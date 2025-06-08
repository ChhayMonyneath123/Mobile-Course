import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'default_content.dart';
import 'search_screen.dart';
import 'footer_links.dart';
import 'bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _searchQuery;

  void _onSearch(String query) {
    setState(() {
      _searchQuery = query.trim().isEmpty ? null : query.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFBFF),
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
              SearchBarWidget(onSearch: _onSearch),
              const SizedBox(height: 20),
              _searchQuery == null
                  ? const DefaultContent()
                  : SearchContent(query: _searchQuery!),
              const SizedBox(height: 30),
              const FooterLinks(),
              const SizedBox(height: 100),
            ],
          ),
          BottomNavBar(
            currentIndex: 2,
            onTap: (index) {
              // handle bottom nav here
            },
          ),
        ],
      ),
    );
  }
}
