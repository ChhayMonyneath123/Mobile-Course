import 'package:flutter/material.dart';
import 'package:ass4/components/CategoryIcon.dart';
import 'package:ass4/components/CourseCard.dart';
import 'package:ass4/components/BlogPost.dart';

void main() => runApp(const WorktencyApp());

class WorktencyApp extends StatelessWidget {
  const WorktencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Worktency',
      home: const WorktencyLandingPage(),
    );
  }
}

class WorktencyLandingPage extends StatefulWidget {
  const WorktencyLandingPage({super.key});

  @override
  State<WorktencyLandingPage> createState() => _WorktencyLandingPageState();
}

class _WorktencyLandingPageState extends State<WorktencyLandingPage> {
  int visiblePostCount = 3; // starting with 3 blog posts


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

          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Unlock Your Potential\nwith Worktency',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'Discover industry-leading courses designed to equip you with real-world skills.\nJoin our community and start your journey to success today.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Image.asset('assets/images/worker.png', height: 200),
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 155,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 0,
                        padding: EdgeInsets.zero,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.menu_book_outlined, size: 18),
                          const SizedBox(width: 8),
                          Text(
                            'Explore Courses',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    width: 150,
                    height: 40,
                    child: FittedBox( // 👈 handles overflow automatically
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[700],
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.co_present_outlined, size: 18),
                            const SizedBox(width: 8),
                            const Text(
                              'Join as an educator',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    'Why Choose Worktency',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(width: 15),
                      CategoryIcon(title: 'Expert Instructors', imagePath: 'assets/images/expert.png'),
                      SizedBox(width: 15),
                      CategoryIcon(title: 'Flexible Learning', imagePath: 'assets/images/flexible.png'),
                      SizedBox(width: 15),
                      CategoryIcon(title: 'Hands-On Learning', imagePath: 'assets/images/hand-on.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Text('Featured Course', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 4/6,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) => const CourseCard(),
                ),
                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    'Meet Our Teachers',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Image.asset(
                      'assets/images/full-teacher.png',
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 30),
                const Text('What we can share with you today', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                ...List.generate(visiblePostCount, (index) => const BlogPost()),
                if (visiblePostCount < 6) // limit to max 6 for now
                  Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          visiblePostCount += 3; // Load 3 more at a time
                        });
                      },
                      child: const Text(
                        'See more',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 40),
                Padding(
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
                          Text('About Us', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Contact Us', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('FAQs', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Community Forum', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Term of Service', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Careers', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Leadership', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Blog', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      // Right column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Social Impact', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Cookies Setting', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Terms', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Accessibility Statement', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Investors', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('GO Pro Course', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Affiliate', style: TextStyle(fontWeight: FontWeight.bold)),
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
                    Icon(Icons.linked_camera_outlined, size: 32), // You can replace with LinkedIn icon
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
            ),
          ),
          // Floating Bottom Navigation
          Positioned(
            left: 16,
            right: 16,
            bottom: 30,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  currentIndex: 0,
                  selectedItemColor: Colors.orange,
                  unselectedItemColor: Colors.black54,
                  backgroundColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  onTap: (index) {
                    // Handle tab switch
                  },
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
        ],
      )


    );
  }
}
