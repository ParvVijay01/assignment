import 'package:flutter/material.dart';

class HomeroomCard extends StatelessWidget {
  final double? width;
  const HomeroomCard({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: width,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Stack(
          children: [
            // Background Image with Gradient applied
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
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
                    ).createShader(bounds);
                  },
                  blendMode:
                      BlendMode
                          .dstIn, // Keeps the gradient effect only on the image
                  child: Image.asset('assets/dotted_bg.png', fit: BoxFit.cover),
                ),
              ),
            ),

            // Text Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Homeroom',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Your classroom awaits you',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(230, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),

            // Foreground Image
            Positioned(
              left: MediaQuery.of(context).size.width / 1.8,
              top: 15,
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('assets/homeroom.png', fit: BoxFit.contain),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
