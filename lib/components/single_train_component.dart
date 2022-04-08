import 'package:flutter/material.dart';

class SingleTrainComponent extends StatefulWidget {
  const SingleTrainComponent(
      {Key? key,
      required this.title,
      required this.date,
      required this.distancy,
      required this.place})
      : super(key: key);

  final String title;
  final String date;
  final String distancy;
  final String place;

  @override
  State<SingleTrainComponent> createState() => SingleTrainComponentState();
}

class SingleTrainComponentState extends State<SingleTrainComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              title: Text(
                widget.title,
                style: TextStyle(

                ),
              ),
              subtitle: Text(
                widget.distancy,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
