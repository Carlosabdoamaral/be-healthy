import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastTrainComponent extends StatefulWidget {
  const LastTrainComponent({
    Key? key,
    required this.title,
    required this.date,
    required this.duration,
    required this.place

  }) : super(key: key);

  final String title;
  final String date;
  final String duration;
  final String place;

  @override
  State<LastTrainComponent> createState() => LastTrainComponentState();
}

class LastTrainComponentState extends State<LastTrainComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
        child: Image.asset("assets/images/demo.jpg"),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        )
    
      ],
    );
  }
}
