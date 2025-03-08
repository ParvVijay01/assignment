import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/utilities/cards/assigned_card.dart';
import 'package:test1/utilities/cards/attendance_card.dart';
import 'package:test1/utilities/cards/student_card.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Parv Vijayvargiya",
              style: TextStyle(fontFamily: "Inter-Bold-W800", fontSize: 18),
            ),
            Text(
              "Teacher(Homeroom)",
              style: TextStyle(
                fontFamily: "Inter-W600",
                fontSize: 14,
                color: Color.fromARGB(102, 0, 0, 0),
              ),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 234, 242, 255),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: FaIcon(
                FontAwesomeIcons.solidUser,
                color: Color.fromARGB(255, 180, 219, 255),
                size: 40,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 242, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(child: FaIcon(FontAwesomeIcons.comments)),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: List.generate(
                  3,
                  (index) => AssignedCard(
                    title: "Announcements",
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 2.12,
                    imagePath: 'assets/folder.png',
                    color: Theme.of(context).colorScheme.primary,
                    containerWidth: 80,
                    containerHeigth: 80,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Student Stats",
                  style: TextStyle(
                    fontFamily: "Inter-W700",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.barsStaggered,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const StudentCard(
            numberText: "1",
            expandedCard: AttendanceComponent(
              attendanceValues: [0.85, 0.72, 0.81, 0.42],
              subjects: ["Maths", "English", "Science", "History"],
            ),
            studentName: "Parv Vijayvargiya",
          ),
          const SizedBox(height: 10),
          const StudentCard(
            numberText: "2",
            expandedCard: AttendanceComponent(
              attendanceValues: [0.38, 0.80, 0.65, 0.78],
              subjects: ["Maths", "English", "Science", "History"],
            ),
            studentName: "Vishal Bala",
          ),
        ],
      ),
    );
  }
}
