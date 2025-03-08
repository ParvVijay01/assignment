import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PercentageCard extends StatelessWidget {
  final String title;
  final double percentage;
  final double increasePercentage;
  final String unit;
  final Color? cardColor;

  const PercentageCard({
    Key? key,
    required this.title,
    required this.percentage,
    required this.increasePercentage,
    required this.unit,
    this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.1, // Adjust width as needed
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),

          // Increase percentage info
          Row(
            children: [
              Container(
                height: 30,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.arrowUp,
                    size: 12,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              SizedBox(width: 4),
              Text(
                "${increasePercentage.toStringAsFixed(0)}% ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter-Bold-W800',
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                "From Last Month",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Inter-W700',
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                percentage.toStringAsFixed(2),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4),
              Text(
                unit,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter-Bold-W800',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
