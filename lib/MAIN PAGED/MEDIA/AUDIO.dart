import 'package:flutter/material.dart';
import 'package:uvy/MAIN%20PAGED/MEDIA/6%20TABS/MYPlaylistsPage.dart';
import 'package:uvy/MAIN%20PAGED/MEDIA/6%20TABS/RadioPage.dart';

import '6 TABS/GenresPage.dart';
import '6 TABS/HPodcastsPage.dart';
import '6 TABS/LibraryPage.dart';
import '6 TABS/LikedPage.dart';

class AUDIO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1DB954), Color(0xFF121212)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCategoryBox(
                      context, Icons.favorite, 'Liked', LikedPage()),
                  buildCategoryBox(
                      context, Icons.library_music, 'Library', LibraryPage()),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCategoryBox(
                      context, Icons.podcasts, 'Podcast', HPodcastsPage()),
                  buildCategoryBox(
                      context, Icons.category, 'Genre', GenresPage()),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCategoryBox(context, Icons.person, 'RADIO', RadioPage()),
                  buildCategoryBox(
                      context, Icons.fiber_new, 'Uploaded', NewRelease()),
                ],
              ),
              SizedBox(height: 14.0),
              buildLastListened(),
              SizedBox(height: 10.0),
              buildLastListened(),
              SizedBox(height: 19.0),
              buildLastListened(),
              SizedBox(height: 200.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryBox(
      BuildContext context, IconData icon, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        // Navigate to category page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2.2, // width of the box
        height: MediaQuery.of(context).size.width / 7.5, // height of the box
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color.fromARGB(255, 92, 111, 99),
        ),
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLastListened() {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last listened',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15.0),
          Container(
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 150.0,
                  margin: EdgeInsets.only(right: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[700],
                  ),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
