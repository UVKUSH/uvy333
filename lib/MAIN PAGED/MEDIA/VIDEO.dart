import 'package:flutter/material.dart';

class VIDEO1 extends StatelessWidget {
  final List<Map<String, dynamic>> videoData = [
    {
      'imageUrl': 'https://i3.ytimg.com/vi/EtozAfF1zmM/maxresdefault.jpg',
      'likes': 3048,
      'title': 'Video Title 1',
      'viewCount': '1.2K',
      'username': 'User1',
      'dayAgo': '1 day ago',
    },
    {
      'imageUrl': 'https://i3.ytimg.com/vi/yA_VzrtLAU8/maxresdefault.jpg',
      'likes': 1234,
      'title': 'Video Title 2',
      'viewCount': '3.5K',
      'username': 'User2',
      'dayAgo': '2 days ago',
    },
    {
      'imageUrl': 'https://i3.ytimg.com/vi/OpcPZdfJbq8/maxresdefault.jpg',
      'likes': 5678,
      'title': 'Video Title 3',
      'viewCount': '2.1K',
      'username': 'User3',
      'dayAgo': '3 days ago',
    },
    {
      'imageUrl': 'https://i3.ytimg.com/vi/xs9T39eMbfA/maxresdefault.jpg',
      'likes': 91011,
      'title': 'Video Title 4',
      'viewCount': '6.8K',
      'username': 'User4',
      'dayAgo': '4 days ago',
    },
    {
      'imageUrl': 'https://i3.ytimg.com/vi/EtozAfF1zmM/maxresdefault.jpg',
      'likes': 121314,
      'title': 'Video Title 5',
      'viewCount': '9.2K',
      'username': 'User5',
      'dayAgo': '5 days ago',
    },
    {
      'imageUrl': 'https://i3.ytimg.com/vi/yA_VzrtLAU8/maxresdefault.jpg',
      'likes': 151617,
      'title': 'Video Title 6',
      'viewCount': '4.6K',
      'username': 'User6',
      'dayAgo': '6 days ago',
    },
    {
      'imageUrl': 'https://i3.ytimg.com/vi/OpcPZdfJbq8/maxresdefault.jpg',
      'likes': 181920,
      'title': 'Video Title 7',
      'viewCount': '7.9K',
      'username': 'User7',
      'dayAgo': '7 days ago',
    },
    {
      'imageUrl': 'https://i3.ytimg.com/vi/xs9T39eMbfA/maxresdefault.jpg',
      'likes': 212223,
      'title': 'Video Title 8',
      'viewCount': '5.3K',
      'username': 'User8',
      'dayAgo': '8 days ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: videoData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 222,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(videoData[index]['imageUrl']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  videoData[index]['title'],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '${videoData[index]['viewCount']} views • ${videoData[index]['username']} • ${videoData[index]['dayAgo']}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
