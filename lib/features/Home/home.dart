import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/utilities/cards/assigned_card.dart';
import 'package:test1/utilities/cards/homeroom_card.dart';
import 'package:test1/utilities/cards/my_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
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
            width: 50, // Adjust size as needed
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 242, 255),
              borderRadius: BorderRadius.circular(15), // Light blue background
            ),
            child: Align(
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
              width: 50, // Adjust size as needed
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 242, 255),
                borderRadius: BorderRadius.circular(
                  20,
                ), // Light blue background
              ),
              child: Center(child: FaIcon(FontAwesomeIcons.comments)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PercentageCard(
                  title: "Percentage",
                  cardColor: Theme.of(context).colorScheme.primary,
                  percentage: 87.52,
                  increasePercentage: 12,
                  unit: "%",
                ),
                SizedBox(width: 10),
                PercentageCard(
                  title: "Percentage",
                  cardColor: Theme.of(context).colorScheme.primary,
                  percentage: 87.52,
                  increasePercentage: 12,
                  unit: 'Classes',
                ),
              ],
            ),
            HomeroomCard(width: MediaQuery.of(context).size.width),
            Row(
              children: [
                AssignedCard(
                  title: "Assigned Classes",
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width / 2.1,
                  imagePath: 'assets/folder.png',
                  color: Theme.of(context).colorScheme.secondary,
                  containerWidth: 100,
                  containerHeigth: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AssignedCard(
                      title: "Announcements",
                      height: MediaQuery.of(context).size.height / 5.2,
                      width: MediaQuery.of(context).size.width / 2.12,
                      imagePath: 'assets/folder.png',
                      color: Theme.of(context).colorScheme.primary,
                      containerWidth: 80,
                      containerHeigth: 80,
                    ),
                    AssignedCard(
                      title: "Notes & Storage",
                      height: MediaQuery.of(context).size.height / 5.2,
                      width: MediaQuery.of(context).size.width / 2.12,
                      imagePath: 'assets/folder.png',
                      color: Theme.of(context).colorScheme.primary,
                      containerWidth: 80,
                      containerHeigth: 80,
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
