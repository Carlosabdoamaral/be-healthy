import 'package:be_healthy/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepPurpleAccent,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  "Medical results in your phone",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 36,
                      fontWeight: FontWeight.w700
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Your analyzes are always with you. We keep your privacy ans time. Take care of yourself!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins'
                  ),
                ),
                Spacer(),
                Spacer(),
                const Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: FloatingActionButton.extended(
                    elevation: 10,
                    backgroundColor: const Color(0xff0bcbba),
                    foregroundColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: const Text(
                        "Get started",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins'
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
