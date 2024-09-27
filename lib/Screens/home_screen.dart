import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: mq.height * 0.2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff4b41f8),
                      Color(0xffb7c2fa), // Red
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Task Manage Your\nProject ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: mq.height * 0.02,
                        ),
                        const Text(
                          "When an unknown printer took a galley of \ntype and scrambled it to make a type \nspecimen",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xff8c469f),
                              ),
                              foregroundColor: MaterialStateProperty.all(
                                Colors.white,
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    "GET STARTED ",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                                Icon(Icons.arrow_forward),
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
            Expanded(
                flex: 2,
                child: const Align(
                  alignment: Alignment.bottomCenter,
                  child: Image(image: AssetImage("assets/splash-screen.png")),
                ))
          ],
        ),
      ),
    );
  }
}
