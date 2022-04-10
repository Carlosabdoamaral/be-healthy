import 'package:flutter/material.dart';

class SingleNotification extends StatefulWidget {
  const SingleNotification({Key? key, required this.title, required this.date}) : super(key: key);

  final String title;
  final String date;

  @override
  State<SingleNotification> createState() => _SingleNotificationState();
}

class _SingleNotificationState extends State<SingleNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.deepPurpleAccent,
            Colors.lightBlueAccent,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            margin:
            const EdgeInsets.only(left: 20, top: 20, bottom: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.notifications_outlined,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.date,
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
