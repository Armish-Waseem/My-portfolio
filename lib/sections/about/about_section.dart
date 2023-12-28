import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import 'components/about_text_with_sign.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Row(
        children: [
          AboutTextWithSign()
        ],
      ),
    );
  }
}

