import 'package:flutter/material.dart';

class Match {
  final String name;
  final int age;
  final String images;
  final String description;

  Match({
    required this.name,
    required this.age,
    required this.images,
    required this.description,
  });
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Match> matches = [
    Match(
      name: 'Alice',
      age: 24,
      images: 'assets/images/pic5.jpg',
      description: 'Looking for a serious relationship.',
    ),Match(
      name: 'Alice',
      age: 24,
      images: 'assets/images/pic5.jpg',
      description: 'Looking for a serious relationship.',
    ),Match(
      name: 'Alice',
      age: 24,
      images: 'assets/images/pic5.jpg',
      description: 'Looking for a serious relationship.',
    ),Match(
      name: 'Alice',
      age: 24,
      images: 'assets/images/pic5.jpg',
      description: 'Looking for a serious relationship.',
    ),Match(
      name: 'Alice',
      age: 24,
      images: 'assets/images/pic5.jpg',
      description: 'Looking for a serious relationship.',
    ),
    Match(
      name: 'Bob',
      age: 28,
      images: 'assets/images/pic5.jpg',
      description: 'Loves outdoor activities and traveling.',
    ),
    // Add more matches as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matches'),
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final match = matches[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(match.images),
                radius: 30,
              ),
              title: Text('${match.name}, ${match.age}'),
              subtitle: Text(match.description),
              onTap: () {
                // Implement navigation to match profile screen
              },
            ),
          );
        },
      ),
    );
  }
}


