import 'package:flutter/material.dart';
import '../MAIN PAGED/MEDIA/page4.dart';
import '../MAIN PAGED/HOMEFEED/page1.dart';
import '../MAIN PAGED/PROFILE/page5.dart';
import '../MAIN PAGED/page2.dart';
import '../MAIN PAGED/tiktok/page3.dart';
import 'camera.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
    PageFive(),
  ];
  @override
  Widget build(BuildContext context) {
    // Get the app's theme
    final theme = Theme.of(context);

    // Set the height of the BottomNavigationBar
    final double navBarHeight = 80;

    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: navBarHeight,
        decoration: BoxDecoration(
          // Change the color of the BottomNavigationBar to white in light theme
          color: theme.brightness == Brightness.light
              ? Colors.white
              : Colors.black87,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.home,
                      size: 32,
                      color: theme.brightness == Brightness.light
                          ? Colors.black
                          : Colors.white),
                  padding: EdgeInsets.only(top: 0.0, bottom: 33.0),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.search,
                      size: 32,
                      color: theme.brightness == Brightness.light
                          ? Colors.black
                          : Colors.white),
                  padding: EdgeInsets.only(top: 0.0, bottom: 33.0),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: _currentIndex == 2
                    ? IconButton(
                        icon: Icon(Icons.camera_alt_rounded,
                            size: 32,
                            color: theme.brightness == Brightness.light
                                ? Colors.black
                                : Colors.white),
                        padding: EdgeInsets.only(top: 0.0, bottom: 33.0),
                        onPressed: () {
                          // Navigate to the camera page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraPage()),
                          );
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.star,
                            size: 32,
                            color: theme.brightness == Brightness.light
                                ? Colors.black
                                : Colors.white),
                        padding: EdgeInsets.only(top: 0.0, bottom: 33.0),
                        onPressed: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                      ),
              ),
            ),
            Expanded(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.music_note_sharp,
                      size: 32,
                      color: theme.brightness == Brightness.light
                          ? Colors.black
                          : Colors.white),
                  padding: EdgeInsets.only(top: 0.0, bottom: 33.0),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.person,
                      size: 32,
                      color: theme.brightness == Brightness.light
                          ? Colors.black
                          : Colors.white),
                  padding: EdgeInsets.only(top: 0.0, bottom: 33.0),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 4;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
