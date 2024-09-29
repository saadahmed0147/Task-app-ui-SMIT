import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_app_ui/Components/project_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        padding: EdgeInsets.symmetric(horizontal: 30),
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
                      darkColor: Color(0xff348ce5),
                      lightColor: Color(0xff96c9f6),
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
                      darkColor: Color(0xff6e4de4),
                      lightColor: Color(0xffbaadd9),
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
                      darkColor: Color(0xffff6096),
                      lightColor: Color(0xfffeb6ce),
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
                      darkColor: Color(0xfffc902d),
                      lightColor: Color(0xfff9c190),
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
          ],
        ),
      ),
    );
  }
}
/*import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 20,
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
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Project",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProjectCard(
                  mq: mq,
                  color: const Color(0xffA4D0F5),
                  title: 'Website\nDesign',
                  task: '20 Task',
                  imagePath: 'assets/website-design.png',
                ),
                ProjectCard(
                  mq: mq,
                  color: const Color(0xffF5B6CB),
                  title: 'Mobile App',
                  task: '10 Task',
                  imagePath: 'assets/mobile-app.png',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProjectCard(
                  mq: mq,
                  color: const Color(0xffC4B2F5),
                  title: 'Pending',
                  task: '40 Task',
                  imagePath: 'assets/pending.png',
                ),
                ProjectCard(
                  mq: mq,
                  color: const Color(0xffF5DFA4),
                  title: 'Illustration',
                  task: '10 Task',
                  imagePath: 'assets/illustration.png',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "My Daily Task",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Task 1",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.timer,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "10:00 AM",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Task 1 description",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Task 2",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.timer,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "11:00 AM",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Task 2 description",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
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
*/