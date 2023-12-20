import 'package:flutter/material.dart';

class Song {
  final String title;
  final String artist;

  Song({required this.title, required this.artist});
}

class LikedPage extends StatelessWidget {
  final List<Song> songs = [
    Song(title: 'Song 1', artist: 'Artist 1'),
    Song(title: 'Song 2', artist: 'Artist 2'),
    Song(title: 'Song 3', artist: 'Artist 3'),
    Song(title: 'Song 4', artist: 'Artist 4'),
    Song(title: 'Song 5', artist: 'Artist 5'),
    Song(title: 'Song 6', artist: 'Artist 6'),
    Song(title: 'Song 7', artist: 'Artist 7'),
    Song(title: 'Song 8', artist: 'Artist 8'),
    Song(title: 'Song 9', artist: 'Artist 9'),
    Song(title: 'Song 10', artist: 'Artist 10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Liked Songs',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search button press
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF121212),
              Color(0xFF1C1C1C),
              Color(0xFF2E2E2E),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                songs[index].title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                songs[index].artist,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16.0,
                ),
              ),
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://i.imgur.com/YTtGSZJ_d.webp?maxwidth=520&shape=thumb&fidelity=high'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle song options button press
                },
              ),
              onTap: () {
                // Handle song tap
              },
            );
          },
        ),
      ),
    );
  }
}
