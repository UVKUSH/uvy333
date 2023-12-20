import 'package:flutter/material.dart';

class HeartNotificationPage extends StatelessWidget {
  final List<String> notifications = [
    "John liked your post",
    "Sarah liked your post",
    "Mike started following you",
    "Anna liked your post",
    "David liked your post",
    "Linda commented on your post",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heart Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return HeartNotification(
            message: notifications[index],
            onTap: () {
              // Handle notification tap
              // You can navigate to the corresponding post or user profile here
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Tapped on: ${notifications[index]}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class HeartNotification extends StatelessWidget {
  final String message;
  final VoidCallback? onTap;

  HeartNotification({required this.message, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      title: Text(message),
      onTap: onTap,
    );
  }
}
