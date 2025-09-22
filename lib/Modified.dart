import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.white,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              labelColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.music_note), text: "Music"),
                Tab(icon: Icon(Icons.music_video), text: "Video"),
                Tab(icon: Icon(Icons.camera_alt), text: "Camera"),
                Tab(icon: Icon(Icons.grade), text: "Favorites"),
                Tab(icon: Icon(Icons.email), text: "Email"),
              ],
            ),
            title: const Text('GeeksForGeeks'),
            backgroundColor: Colors.green,
          ),
          body: const TabBarView(
            children: [
              TabContent(icon: Icons.music_note, label: "Music", color: Colors.purple),
              TabContent(icon: Icons.music_video, label: "Video", color: Colors.red),
              TabContent(icon: Icons.camera_alt, label: "Camera", color: Colors.blue),
              TabContent(icon: Icons.grade, label: "Favorites", color: Colors.amber),
              TabContent(icon: Icons.email, label: "Email", color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const TabContent({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: color,
            ),
            const SizedBox(height: 16),
            Text(
              label,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}S