import 'package:flutter/material.dart';
import 'package:task_app_ui/Components/date_card.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  int _selectedDateIndex = 0; // Track the selected date index

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Today\'s Task',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/profile-image.png"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'January, 15',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      Text(
                        '20 Task Today',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 23,
                  child: IconButton(
                    icon: const Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.purple,
                    ),
                    onPressed: () async {
                      DateTime _selectedDate = DateTime.now();

                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: _selectedDate,
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2101),
                      );
                      if (newDate != null && newDate != _selectedDate) {
                        setState(() {
                          _selectedDate = newDate;
                        });
                      }
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: mq.height * 0.018),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DateCard(
                  day: '12',
                  weekDay: 'Wed',
                  isSelected: _selectedDateIndex == 0,
                  onTap: () {
                    setState(() {
                      _selectedDateIndex = 0;
                    });
                  },
                ),
                DateCard(
                  day: '13',
                  weekDay: 'Thu',
                  isSelected: _selectedDateIndex == 1,
                  onTap: () {
                    setState(() {
                      _selectedDateIndex = 1;
                    });
                  },
                ),
                DateCard(
                  day: '14',
                  weekDay: 'Fri',
                  isSelected: _selectedDateIndex == 2,
                  onTap: () {
                    setState(() {
                      _selectedDateIndex = 2;
                    });
                  },
                ),
                DateCard(
                  day: '15',
                  weekDay: 'Sat',
                  isSelected: _selectedDateIndex == 3,
                  onTap: () {
                    setState(() {
                      _selectedDateIndex = 3;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: mq.height * 0.04),
            const Text(
              'On Going',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            _buildTaskCard('Mobile App Design', '16 Task', '9:00 AM - 2:00 PM'),
            const SizedBox(height: 15),
            _buildTaskCard(
                'Landing Page Design', '25 Task', '9:00 AM - 12:30 PM'),
            const SizedBox(height: 15),
            _buildTaskCard('Website Design', '10 Task', '11:00 AM - 2:00 PM'),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: SizedBox(
          height: mq.height * 0.07,
          width: double.infinity,
          child: FloatingActionButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: const Color(0xff8a449c),
            child: const Text(
              'Add New Task',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 21),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // Task card widget
  Widget _buildTaskCard(String title, String taskCount, String timeRange) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
              const SizedBox(height: 5),
              Text(
                taskCount,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
              ),
            ],
          ),
          Text(
            timeRange,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
