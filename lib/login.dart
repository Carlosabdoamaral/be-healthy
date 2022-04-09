import 'package:be_healthy/home.dart';
import 'package:be_healthy/sign_up.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          "Welcome to",
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
                            icon: Icon(Icons.lock),
                            hintText: 'Password'),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Don't have an account yet?",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                      ),
                      Spacer(),
                      FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          },
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          tooltip: "Create an account",
                          label: Text(
                            "Create",
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
                                builder: (context) => const HomePage()),
                          );
                        },
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        label: Row(
                          children: const [
                            Text(
                              "Login",
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
