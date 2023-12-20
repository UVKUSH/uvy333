import 'package:flutter/material.dart';

import 'AUDIO.dart';
import 'LIVE.dart';
import 'VIDEO.dart';

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Color> _gradientColors = [
    Colors.green.shade700,
    Colors.red.shade700,
    Colors.purple.shade700,
  ];
  List<Color> _searchBarColors = [
    Colors.green.shade200,
    Colors.red.shade200,
    Colors.purple.shade200,
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(updateColors);

    // Add this code to update the colors based on the initial tab index
    switch (_tabController.index) {
      case 0:
        _gradientColors = [Colors.green.shade700, Colors.green.shade200];
        _searchBarColors = [Colors.green.shade200, Colors.green.shade50];
        break;
      case 1:
        _gradientColors = [Colors.red.shade700, Colors.red.shade200];
        _searchBarColors = [Colors.red.shade200, Colors.red.shade50];
        break;
      case 2:
        _gradientColors = [Colors.purple.shade700, Colors.purple.shade200];
        _searchBarColors = [Colors.purple.shade200, Colors.purple.shade50];
        break;
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(updateColors);
    _tabController.dispose();
    super.dispose();
  }

  void updateColors() {
    setState(() {
      switch (_tabController.index) {
        case 0:
          _gradientColors = [Colors.green.shade700, Colors.green.shade200];
          _searchBarColors = [Colors.green.shade200, Colors.green.shade50];
          break;
        case 1:
          _gradientColors = [Colors.red.shade700, Colors.red.shade200];
          _searchBarColors = [Colors.red.shade200, Colors.red.shade50];
          break;
        case 2:
          _gradientColors = [Colors.purple.shade700, Colors.purple.shade200];
          _searchBarColors = [Colors.purple.shade200, Colors.purple.shade50];
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
            elevation: 0,
            title: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Theme.of(context).textTheme.bodyText2!.color,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).iconTheme.color,
                ),
                filled: true,
                fillColor: _searchBarColors[0],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 12.0,
                ),
              ),
            ),
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'AUDIO'),
                Tab(text: 'VIDEO'),
                Tab(text: 'LIVE'),
              ],
              labelColor: Theme.of(context).textTheme.bodyLarge?.color,
              unselectedLabelColor: Colors.grey,
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: _gradientColors,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: [
                AUDIO(),
                VIDEO1(),
                LIVETV(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
