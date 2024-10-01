import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  final String day;
  final String weekDay;
  final bool isSelected;
  final VoidCallback onTap;

  const DateCard({
    super.key,
    required this.day,
    required this.weekDay,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: mq.height * 0.13,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xff1509ab) : Colors.white10,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  day,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: isSelected ? Colors.white : const Color(0xff1509ab),
                  ),
                ),
                SizedBox(height: mq.height * 0.008),
                Text(
                  weekDay,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: isSelected ? Colors.white : const Color(0xff1509ab),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
