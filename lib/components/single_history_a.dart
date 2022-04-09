import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleHistoryA extends StatefulWidget {
  const SingleHistoryA({Key? key, required this.distancy, required this.title, required this.date}) : super(key: key);

  final double distancy;
  final String title;
  final String date;

  @override
  State<SingleHistoryA> createState() => _SingleHistoryAState();
}

class _SingleHistoryAState extends State<SingleHistoryA> {

  @override
  Widget build(BuildContext context) {
    double distancy = widget.distancy;

    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(232, 232, 232, 1.0),
          borderRadius: const BorderRadius.all(
              const Radius.circular(10))),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.only(
                left: 20, top: 20, bottom: 20),
            decoration: const BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepPurpleAccent,
                  Colors.lightBlueAccent,
                ],
              ),
            ),
            child: const Icon(
              Icons.history_rounded,
              color: Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                left: 20, top: 20, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$distancy km",
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                Text(widget.date)
              ],
            ),
          ),
          const Spacer(),
          // Container(
          //   padding: const EdgeInsets.only(right: 20),
          //   child:
          //   const Icon(Icons.arrow_forward_ios_rounded),
          // ),
        ],
      ),
    );
  }
}
