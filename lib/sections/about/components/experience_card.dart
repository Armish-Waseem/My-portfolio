import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key, required this.numOfExp,
  });

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color:  const Color(0XFFF7E8FF).withOpacity(0.25),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0XFFEDD2FC),
          borderRadius: BorderRadius.circular(10),
          boxShadow:  const [
          BoxShadow(
            offset: Offset(0, 3),
          ),
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color=const Color(0xFFDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        color: const Color(0xFFA600FF).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
             const SizedBox(height: kDefaultPadding / 2),
            const Text(
              "Years of Experience",
              style: TextStyle(
                color: Color(0xFFA600FF),
              ),
            )
          ],
        ),
        ),
    );
  }
}