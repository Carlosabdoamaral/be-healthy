import 'package:be_healthy/components/single_notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Notifications",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 23,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
              SingleNotification(title: "Example of notification", date: "05/04/2022"),
            ],
          ),
        ),
      ),
    );
  }
}
