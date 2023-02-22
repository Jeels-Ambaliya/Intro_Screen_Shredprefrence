import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splesh_screen_shredprefrence/screens/views/splesh3.dart';

import '../../utils/sf_utils.dart';
import 'home.dart';

class Splesh_Screen2 extends StatefulWidget {
  const Splesh_Screen2({Key? key}) : super(key: key);

  @override
  State<Splesh_Screen2> createState() => _Splesh_Screen2State();
}

class _Splesh_Screen2State extends State<Splesh_Screen2> {
  bool LoggedIn = false;

  checkLogin() async {
    setState(() {});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    LoggedIn = prefs.getBool(sfLogIn) ?? false;
    if (LoggedIn) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }

  LogIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // LoggedIn = true;
    prefs.setBool(sfLogIn, LoggedIn);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const Splesh_Screen3(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-135.jpg?w=740&t=st=1676900038~exp=1676900638~hmac=ab0eeb5a7f421d471e17aebb12e2e968327b7609895495f8d47400d739106e5a",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                "Search How - To's. Help Videos, and Solutions to quickly troubleshoot and enhance perfomance.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 150,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        LogIn();
                      },
                      child: const Text(
                        "SKIP",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                          ),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade100,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade100,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 50,
                          ),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade100,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        LogIn();
                      },
                      child: const Text(
                        "NEXT",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
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
    );
  }
}
