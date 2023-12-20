import 'package:flutter/material.dart';

class ShakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHAKE DATING'),
      ),
      body: Center(
        child: Text(
          'This is the Wallet Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
