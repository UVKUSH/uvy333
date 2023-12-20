import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  int _currentIndex = 1; // Set the initial index to open the Story tab

  final List<Widget> _pages = [
    PostPage(),
    StoryPage(),
    ReelPage(),
    LivePage(),
  ];

  // Text size for unselected tabs
  double unselectedTextSize = 18.0;

  // Text size for selected tab
  double selectedTextSize = 24.0;

  @override
  void initState() {
    super.initState();
    // Set the initial index to open the Story tab
    _currentIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings button press
            },
          ),
        ],
        backgroundColor:
            Color.fromARGB(0, 208, 220, 215), // Make AppBar transparent
        elevation: 0, // Remove AppBar shadow
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 300), // Animation duration
        decoration: BoxDecoration(
          color: Colors.black, // Background color for the bottom tab bar
          border: Border(
            top: BorderSide(color: Colors.grey), // Add border
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: 'Post',
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: 'Story',
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: 'Reel',
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: 'Live',
            ),
          ],
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: selectedTextSize,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: unselectedTextSize,
          ),
        ),
      ),
    );
  }
}

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text('Post Page')),
    );
  }
}

class StoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text('Story Page')),
    );
  }
}

class ReelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(child: Text('Reel Page')),
    );
  }
}

class LivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text('Live Page')),
    );
  }
}
