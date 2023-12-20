import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // Set the background color here
      body: Center(
        child: Text(
          'MAKE a POST!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
