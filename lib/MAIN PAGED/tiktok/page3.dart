import 'package:flutter/material.dart';
import 'package:uvy/MAIN%20PAGED/tiktok/foloowing.dart';
import 'package:uvy/MAIN%20PAGED/tiktok/shake.dart';
import '../HOMEFEED/messeging/dm.dart';
import 'fyp.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: IconButton(
            icon: Icon(Icons.handshake_sharp, size: 28),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShakePage(),
                ),
              );
            },
          ),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 8.0), // Adjust the left padding
            child: IconButton(
              icon: Icon(Icons.message, size: 28),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessagePage(),
                  ),
                );
              },
            ),
          ),
          IconTheme(
            data: IconThemeData(color: Colors.white),
            child: IconButton(
              icon: Icon(Icons.search, size: 33),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Center(
            // Center the TabBar
            child: TabBar(
              controller: _tabController,
              isScrollable: true, // Make the TabBar scrollable
              tabs: [
                Tab(
                  child: Text(
                    'Following',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'FYP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          FollowingPage(),
          FYPPage(),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Center(
        child: Text(
          'This is the Search Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
