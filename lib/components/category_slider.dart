import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['Cyber Security', 'Network Administrator', 'Cryptography'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: categories.map((category) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Text(
              category,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 160,
                    child: Card(
                      margin: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Course Icon
                            Center(
                              child: Image.asset(
                                'assets/images/Word.png',
                                height: 60,
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Course Title
                            const Text(
                              'Microsoft Word',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),

                            const SizedBox(height: 6),

                            // Level and People Row
                            Row(
                              children: const [
                                Icon(Icons.network_wifi_2_bar_outlined, size: 14, color: Colors.black54),
                                SizedBox(width: 4),
                                Text(
                                  'កម្រិតដំបូង',
                                  style: TextStyle(fontSize: 11, color: Colors.black54),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: const [
                                Icon(Icons.people, size: 14, color: Colors.black54),
                                SizedBox(width: 4),
                                Text(
                                  '99 នាក់ចូលរៀន',
                                  style: TextStyle(fontSize: 11, color: Colors.black54),
                                ),
                              ],
                            ),

                            const SizedBox(height: 8),

                            // Instructor Info
                            Row(
                              children: const [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundImage: AssetImage('assets/images/teacher.png'),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mr. Bunthorn Liv',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        'Professor @ITC',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),

                            const Spacer(),

                            // Price and Start Button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '\$39.99',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.blue,
                                    side: const BorderSide(color: Colors.blue),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                    textStyle: const TextStyle(fontSize: 12),
                                    elevation: 0,
                                  ),
                                  onPressed: () {},
                                  child: const Row(
                                    children: [
                                      Text('Start'),
                                      Icon(Icons.arrow_forward, size: 14),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
