import 'dart:core';
import 'package:be_healthy/history.dart';
import 'package:be_healthy/login.dart';
import 'package:be_healthy/new_exercise.dart';
import 'package:be_healthy/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/single_history_a.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final String username = "Carlos Amaral";

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
                  bottomLeft: Radius.circular(30),
                ),
              ),
              width: double.infinity,
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const NotificationsPage()),
                              );
                            },
                            tooltip: "Notifications",
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            child: Icon(
                              Icons.notifications_outlined,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),

                          const Spacer(),

                          FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const LoginPage()),
                              );
                            },
                            tooltip: "Logout",
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            child: Icon(
                              Icons.logout,
                              size: 30,
                              color: Colors.white38,
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(top: 40, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Olá,",
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Poppins'),
                            ),
                            Text(
                              username,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              padding: const EdgeInsets.only(top: 10),
            ),
            Container(
              child: Column(
                children: [
                  // STATS
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "New",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25),
                            ),
                            const Spacer(),
                            FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NewExercisePage()),
                                );
                              },
                              label: Row(
                                children: const [
                                  Text(
                                    "Other",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              // height: 150.0,
                              // width: 150.0,
                              color: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(232, 232, 232, 1.0),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              // height: 150.0,
                              // width: 150.0,
                              color: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(232, 232, 232, 1.0),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              // height: 150.0,
                              // width: 150.0,
                              color: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(232, 232, 232, 1.0),
                                  borderRadius: BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              // height: 150.0,
                              // width: 150.0,
                              color: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(232, 232, 232, 1.0),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              // height: 150.0,
                              // width: 150.0,
                              color: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(232, 232, 232, 1.0),
                                  borderRadius: BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              // height: 150.0,
                              // width: 150.0,
                              color: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color:
                                      const Color.fromRGBO(232, 232, 232, 1.0),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "History",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25),
                            ),
                            const Spacer(),
                            FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HistoryPage()),
                                );
                              },
                              label: Row(
                                children: const [
                                  Text(
                                    "Show all",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            )
                          ],
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
          ],
        ),
      ),
    );
  }
}
