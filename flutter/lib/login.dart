import 'package:be_healthy/home.dart';
import 'package:be_healthy/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _auth() async {
    final response = await http.get(Uri.parse('http://localhost:8080/users/all'));

    print(response.body);

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold (
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(124, 77, 255, 1),
                Color.fromRGBO(64, 196, 255, 1),
              ],
            ),
          ),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const Spacer(),
                  Column(
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
                  Container(
                    width: double.infinity,
                    height: 60,
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
                            icon: Icon(Icons.person),
                            hintText: 'Username'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
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
                  Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    margin: EdgeInsets.only(top: 20),
                    child: FloatingActionButton.extended(
                        onPressed: () {
                          _auth();
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
