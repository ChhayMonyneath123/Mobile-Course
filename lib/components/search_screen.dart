import 'package:flutter/material.dart';

import 'course_card_widget.dart';

class SearchContent extends StatefulWidget {
  final String query;
  const SearchContent({super.key, required this.query});

  @override
  State<SearchContent> createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final tabs = ['All', 'Courses', 'Projects', 'PRO sessions'];

  final items = [
    {'title': 'Computer Network', 'type': 'Courses'},
    {'title': 'Introduction to Machine Learning', 'type': 'Courses'},
    {'title': 'Project: Networking', 'type': 'Projects'},
    {'title': 'PRO Session: Flutter', 'type': 'PRO sessions'},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  List<Map<String, String>> _filter(String type) {
    return items.where((item) {
      final matchQuery = widget.query
          .toLowerCase()
          .split(' ')
          .every((q) => item['title']!.toLowerCase().contains(q));


      final matchType = type == 'All' || item['type'] == type;
      return matchQuery && matchType;
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.orange,
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.black,
          tabs: tabs.map((t) => Tab(text: t)).toList(),
        ),
        SizedBox(
          height: 400, // Adjust as needed or wrap in Expanded
          child: TabBarView(
            controller: _tabController,
            children: tabs.map((tab) {
              final filtered = _filter(tab);
              return ListView(
                children: filtered.map((item) {
                  return CourseCardWidget(
                    title: item['title']!,
                    description:
                    "A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally",
                    language: 'ភាសាខ្មែរ',
                    views: '99 ការមើល',
                    imagePath: 'assets/images/Word.png',
                  );
                }).toList(),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
