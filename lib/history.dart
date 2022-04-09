import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

import 'components/single_history_a.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  // Generate some dummy data for the cahrt
  // This will be used to draw the red line
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.deepPurpleAccent,
                      Colors.lightBlueAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              width: double.infinity,
              padding: const EdgeInsets.only(top: 10),
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            tooltip: "Return to home page",
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
                        child: Column (
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "History",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton.extended(
                                    onPressed: null,
                                    label: Text(
                                      "Day",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        color: Colors.white70
                                      ),
                                    ),
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),

                                  FloatingActionButton.extended(
                                    onPressed: null,
                                    label: Text(
                                      "Week",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Colors.white
                                      ),
                                    ),
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),

                                  FloatingActionButton.extended(
                                    onPressed: null,
                                    label: Text(
                                      "Month",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Colors.white70
                                      ),
                                    ),
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),

                                  FloatingActionButton.extended(
                                    onPressed: null,
                                    label: Text(
                                      "Year",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'Poppins',
                                          color: Colors.white70
                                      ),
                                    ),
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 20, bottom: 20, left:0, right: 0),
                              height: 200,

                              child: LineChart(
                                LineChartData(
                                  titlesData: FlTitlesData(show: false),
                                  borderData: FlBorderData(show: false),
                                  gridData: FlGridData(show: false),
                                  lineBarsData: [
                                    // The red line
                                    LineChartBarData(
                                      spots: dummyData1,
                                      show: true,
                                      isCurved: true,
                                      barWidth: 3,
                                      color: Colors.white,

                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SingleHistoryA(
                    title: "Walk",
                    distancy: 10,
                    date: "05/04/2022",
                  ),

                  SingleHistoryA(
                    title: "Walk",
                    distancy: 10,
                    date: "05/04/2022",
                  ),

                  SingleHistoryA(
                    title: "Walk",
                    distancy: 10,
                    date: "05/04/2022",
                  ),

                  SingleHistoryA(
                    title: "Walk",
                    distancy: 10,
                    date: "05/04/2022",
                  ),

                  SingleHistoryA(
                    title: "Walk",
                    distancy: 10,
                    date: "05/04/2022",
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
