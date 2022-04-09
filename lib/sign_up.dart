import 'package:be_healthy/onboarding.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          height: 1000,
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
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: const [
                        Text(
                          "Create an account and",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 20),
                        ),
                        Text(
                          "BeHealthy",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            hintText: 'Username'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.email_rounded),
                            hintText: 'Email'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock_rounded),
                            hintText: 'Password'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock_rounded),
                            hintText: 'Confirm you password'),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                      ),
                      Spacer(),
                      FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          tooltip: "Create an account",
                          label: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    margin: EdgeInsets.only(top: 20),
                    child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnboardingPage(),
                            ),
                          );
                        },
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        label: Row(
                          children: const [
                            Text(
                              "Create",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.login,
                              color: Colors.black54,
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
