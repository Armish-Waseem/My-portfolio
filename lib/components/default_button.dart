import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.imageSrc, required this.text, required this.press,
  });

final String imageSrc, text;
final Function press;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      
       onPressed: () {}, 
       style: TextButton.styleFrom(
        backgroundColor: const Color(0xFFE8F0F9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        )
       ),
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          const SizedBox(width: kDefaultPadding),
           Text(text),
        ],
        ),
        );
  }
}

