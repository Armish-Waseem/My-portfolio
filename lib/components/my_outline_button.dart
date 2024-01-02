import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    super.key, 
    required this.imageSrc, 
    required this.text, 
    required this.press,
  });

final String imageSrc, text;
final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              
            ),
            backgroundColor: const Color(0xFFEDEDED),
            
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding * 2.5,
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                imageSrc,
                height: 40,
              ),
              const SizedBox(width: kDefaultPadding),
               Text(text),
            ],
          ),
        ),
    );
  }
}
