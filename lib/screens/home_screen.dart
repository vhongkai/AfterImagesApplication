import 'package:flutter/material.dart';

import 'photo_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('After Images'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PhotoDetailScreen(photoIndex: index + 1),
                ),
              );
            },
            child: Container(
              color: Colors.blueGrey.shade100,
              child: Center(child: Text('Photo ${index + 1}')),
            ),
          );
        },
      ),
    );
  }
}
