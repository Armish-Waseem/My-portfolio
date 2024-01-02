import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/default_button.dart';

import '../constants.dart';

class HireMeCard extends StatelessWidget {
  final double? width;
  final double? height;
  const HireMeCard({
    super.key, this.width, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          Container(
            height: height ?? 80,
            width: width ?? 80,
            color: Colors.transparent,
            child: Image.asset("assets/images/email.png",
            fit: BoxFit.contain,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
              ),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Starting New Project",
                style:
                 TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: kDefaultPadding /2),
              Text(
                "Get an estimate for the new project",
                style: TextStyle(
                  fontWeight: FontWeight.w200),
                ),
            ],
          ),
          ),
          DefaultButton(
            text: "Hire Me!",
            imageSrc: "assets/images/hand.png",
            press: () {},
            ),
        ],
      ),
    );
  }
}