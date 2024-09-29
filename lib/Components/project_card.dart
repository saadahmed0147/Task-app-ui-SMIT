import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final Size mq;
  final Color lightColor;
  final Color darkColor;
  final String title;
  final String task;
  final String imagePath;
  final double? cardHeight;
  final double? imageContainerHeight;
  final double? imageContainerWidth;

  const ProjectCard({
    super.key,
    required this.mq,
    required this.title,
    required this.task,
    required this.imagePath,
    required this.lightColor,
    required this.darkColor,
    this.cardHeight,
    this.imageContainerHeight,
    this.imageContainerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mq.width * 0.4,
      height: cardHeight,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            darkColor,
            lightColor,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: imageContainerHeight ?? mq.height * 0.09,
                width: imageContainerWidth ?? mq.height * 0.12,
                child: Image(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: mq.height * 0.012,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: mq.height * 0.008,
            ),
            Text(
              task,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
