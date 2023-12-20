
import 'package:flutter/material.dart';

class TEXT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set the background color here
      body: Center(
        child: Text(
          'SHARE ur THOUGHT!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
