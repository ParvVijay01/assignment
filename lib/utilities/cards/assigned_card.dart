import 'package:flutter/material.dart';

class AssignedCard extends StatelessWidget {
  final double? width, containerWidth, containerHeigth, height;
  final String imagePath, title;
  final Color? color;

  const AssignedCard({
    super.key,
    required this.width,
    required this.imagePath,
    required this.height,
    required this.title,
    required this.containerWidth,
    required this.containerHeigth,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ShaderMask(
                  shaderCallback:
                      (bounds) => LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.white,
                          Colors.white70,
                          Colors.white60,
                          Colors.white54,
                          Colors.white38,
                          Colors.white30,
                          Colors.white24,
                          Colors.white12,
                          Colors.white10,
                          Colors.transparent,
                        ],
                      ).createShader(bounds),
                  blendMode: BlendMode.dstIn,
                  child: Image.asset('assets/dotted_bg.png', fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: containerHeigth,
                    width: containerWidth,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(imagePath, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Your classroom awaits you',
                    style: TextStyle(fontSize: 13, color: Color(0xE6FFFFFF)),
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
