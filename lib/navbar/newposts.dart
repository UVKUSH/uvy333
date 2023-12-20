import 'package:flutter/material.dart';
import 'camera.dart'; // Import the CameraPage if not already imported

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF00FF00), // Green
              Color(0xFFFF0000), // Red
              Color(0xFFFF00FF), // Magenta
              Color(0xFFFFFF00), // Yellow
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 60, // Adjust icon size as needed
                icon: Icon(Icons.camera_alt),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CameraPage()),
                  );
                },
              ),
              SizedBox(height: 16), // Add spacing between the icon and text
              Text('Camera', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
