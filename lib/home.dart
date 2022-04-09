import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Container(
        child: Column(
          children: [
            // PARTE DO GRADIENTE
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
                child: SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.space_dashboard_rounded,
                              size: 35,
                              color: Colors.white,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.notifications_outlined,
                              size: 35,
                              color: Colors.white,
                            ),
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
                )),

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
                        const Text(
                          "New",
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
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
                                  children: [
                                    const Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Colors.black54,
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
                                  children: [
                                    const Text(
                                      "Caminhada",
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                        Colors.black54,
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
                                  children: [
                                    const Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                        Colors.black54,
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
                                  children: [
                                    const Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                        Colors.black54,
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
                                  children: [
                                    const Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                        Colors.black54,
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
                                  color: const Color.fromRGBO(232, 232, 232, 1.0),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Caminhada",
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                        Colors.black54,
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
                        horizontal: 20, vertical:10),
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
                              onPressed: null,
                              label: Row(
                                children: [
                                  const Text(
                                    "Show all",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins'
                                    ),
                                  ),

                                  const Icon( Icons.keyboard_arrow_right, color: Colors.grey,),
                                ],
                              ),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            )
                          ],
                        ),

                        Container(
                          width: double.infinity,
                          height: 100,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(232, 232, 232, 1.0),
                            borderRadius: const BorderRadius.all(const Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blue,
                                ),
                                child: const Icon(
                                  Icons.history_rounded,
                                  color: Colors.white,
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "5km",
                                    ),

                                    const Text(
                                      "Caminhada",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    const Text("05/04/2022")
                                  ],
                                ),
                              ),
                              
                              const Spacer(),
                              
                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                child: const Icon(
                                  Icons.arrow_forward_ios_rounded
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          height: 100,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: const Color.fromRGBO(232, 232, 232, 1.0),
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blue,
                                ),
                                child: const Icon(
                                  Icons.history_rounded,
                                  color: Colors.white,
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "5km",
                                    ),

                                    const Text(
                                      "Caminhada",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    const Text("05/04/2022")
                                  ],
                                ),
                              ),

                              const Spacer(),

                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                child: const Icon(
                                    Icons.arrow_forward_ios_rounded
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          height: 100,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(232, 232, 232, 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blue,
                                ),
                                child: const Icon(
                                  Icons.history_rounded,
                                  color: Colors.white,
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "5km",
                                    ),

                                    Text(
                                      "Caminhada",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text("05/04/2022")
                                  ],
                                ),
                              ),

                              const Spacer(),

                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                child: const Icon(
                                    Icons.arrow_forward_ios_rounded
                                ),
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
          ],
        ),
      ),
    );
  }
}
