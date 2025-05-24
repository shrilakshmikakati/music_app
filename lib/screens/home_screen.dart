import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/service_card.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _handleBookNow() {
    // Implement booking functionality
    print('Book Now pressed');
  }

  void _handleServiceTap(String service) {
    // Handle service selection
    print('Selected service: $service');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Search and profile section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Search bar
                  Expanded(
                    child: Container(
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Colors.grey),
                          const SizedBox(width: 8),
                          const Text(
                            'Search "Punjabi Lyrics"',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const Spacer(),
                          Icon(Icons.mic, color: Colors.grey[600]),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Profile icon
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Main content - scrollable
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header section with free demo
                      HeaderSection(onBookNow: _handleBookNow),
                      const SizedBox(height: 24),

                      // Tagline
                      const Text(
                        'Hire hand-picked Pros for popular music services',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Services list
                      ServiceCard(
                        title: 'Music Production',
                        description: 'Custom instrumentals & film scoring',
                        iconColor: Colors.red,
                        icon: Icons.graphic_eq,
                        onTap: () => _handleServiceTap('Music Production'),
                      ),
                      ServiceCard(
                        title: 'Mixing & Mastering',
                        description: 'Make your tracks Radio-ready',
                        iconColor: Colors.cyan,
                        icon: Icons.tune,
                        onTap: () => _handleServiceTap('Mixing & Mastering'),
                      ),
                      ServiceCard(
                        title: 'Lyrics Writing',
                        description: 'Turn feelings into lyrics',
                        iconColor: Colors.yellow,
                        icon: Icons.edit,
                        onTap: () => _handleServiceTap('Lyrics Writing'),
                      ),
                      ServiceCard(
                        title: 'Vocals',
                        description: 'Vocals that bring your lyrics to life',
                        iconColor: Colors.purple,
                        icon: Icons.mic,
                        onTap: () => _handleServiceTap('Vocals'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Tracks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Projects',
          ),
        ],
      ),
    );
  }
}