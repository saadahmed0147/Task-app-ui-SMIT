import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_app_ui/Components/project_card.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:task_app_ui/Components/task_card.dart';
import 'package:task_app_ui/Screens/task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Tracks the currently selected index

  final iconList = <IconData>[
    Icons.home,
    Icons.notifications,
    Icons.grid_view,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: mq.width * 0.03,
                ),
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("assets/profile-image.png"),
                ),
                SizedBox(
                  width: mq.width * 0.02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hi,",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                    Text(
                      "Saad Ahmed",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "October 01,2024",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Colors.grey.shade600),
            )
          ],
        ),
        actions: [
          const Icon(
            Icons.menu,
            size: 30,
          ),
          SizedBox(
            width: mq.width * 0.03,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Project",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: mq.height * 0.009,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProjectCard(
                      mq: mq,
                      darkColor: const Color(0xff348ce5),
                      lightColor: const Color(0xff96c9f6),
                      title: "Website\nDesign",
                      task: "20 Task",
                      imagePath: "assets/card1.png",
                      imageContainerHeight: mq.height * 0.09,
                    ),
                    SizedBox(
                      height: mq.height * 0.025,
                    ),
                    ProjectCard(
                      mq: mq,
                      darkColor: const Color(0xff6e4de4),
                      lightColor: const Color(0xffbaadd9),
                      title: "Pending",
                      task: "40 Task",
                      imagePath: "assets/card3.png",
                      imageContainerWidth: mq.width * 0.2,
                      imageContainerHeight: mq.height * 0.05,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProjectCard(
                      mq: mq,
                      darkColor: const Color(0xffff6096),
                      lightColor: const Color(0xfffeb6ce),
                      title: "Mobile App",
                      task: "10 Task",
                      imagePath: "assets/card2.png",
                      imageContainerWidth: mq.width * 0.2,
                      imageContainerHeight: mq.height * 0.05,
                    ),
                    SizedBox(
                      height: mq.height * 0.025,
                    ),
                    ProjectCard(
                      mq: mq,
                      darkColor: const Color(0xfffc902d),
                      lightColor: const Color(0xfff9c190),
                      title: "Illustration",
                      task: "10 Task",
                      imagePath: "assets/card4.png",
                      imageContainerHeight: mq.height * 0.12,
                      imageContainerWidth: mq.height * 0.5,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: mq.height * 0.009,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "My Daily Task",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: mq.height * 0.009,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return TaskCard(
                    mq: mq,
                    title: "Startup Website Design\nwith responsive",
                    timeRange: "9:00 AM - 12:30 PM",
                    progress: 40,
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: mq.height * 0.08,
        width: mq.height * 0.08,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xffc73dea),
              Color(0xff6a1b77),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TaskScreen(),
                ));
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: mq.height * 0.1,

        icons: iconList,

        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        activeColor: Colors.white,
        inactiveColor: Colors.white, backgroundColor: const Color(0xff4258f9),
        onTap: (index) => setState(() => _currentIndex = index),
        //other params
      ),
    );
  }
}
