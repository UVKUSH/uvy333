import 'package:flutter/material.dart';
import 'package:uvy/MAIN%20PAGED/HOMEFEED/feedINSTA.dart';
import 'package:uvy/MAIN%20PAGED/HOMEFEED/heart.dart';

import 'TEXTfeed2.dart';
import 'friendsfeed.dart';
import 'messeging/dm.dart';

class PageOne extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Padding(
                padding: const EdgeInsets.only(right: 178.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('UVY'),
                  ],
                ),
              ),

              actions: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeartNotificationPage()),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: IconButton(
                    icon: Icon(Icons.message),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MessagePage()),
                      );
                    },
                  ),
                ),
              ],
              bottom: TabBar(
                tabs: [
                  Tab(text: 'FOLLOWS'),
                  Tab(text: 'THOUGHTS'),
                  Tab(text: 'FRIENDS'),
                ],
                labelColor: Theme.of(context).textTheme.bodyLarge?.color,
                unselectedLabelColor: Colors.grey,
              ),
              floating: true,
              pinned: true,
              toolbarHeight: 30, // Change this to adjust the app bar height
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  INSfeed(),
                  TEXTfeed(),
                  FRNDfeed(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
