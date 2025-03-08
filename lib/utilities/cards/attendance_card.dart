import 'package:flutter/material.dart';

class AttendanceComponent extends StatelessWidget {
  final List<double> attendanceValues; // Dynamic attendance values
  final List<String> subjects; // Subject names

  const AttendanceComponent({
    super.key,
    required this.attendanceValues,
    required this.subjects,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(color: Color(0xFFF3F3F3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(attendanceValues.length, (index) {
          return Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: CircularProgressIndicator(
                      value: attendanceValues[index], // Dynamic value
                      backgroundColor: Colors.grey.shade300,
                      color: Colors.blue,
                      strokeWidth: 5,
                    ),
                  ),
                  Text(
                    "${(attendanceValues[index] * 100).toInt()}%", // Convert to percentage
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                subjects[index], // Dynamic subject names
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
