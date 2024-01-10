import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/static/keys.dart';
import 'package:flutter_application_1/constants.dart';

import '../../components/default_button.dart';
import '../../components/my_outline_button.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.desktop_aboutKey,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child:  Column(
        
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                ),
              ),
              ExperienceCard(
                numOfExp: '08',
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
                ),
                const SizedBox(width: kDefaultPadding *1.5),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
                  
                  child: DefaultButton(
                    imageSrc: "assets/images/download.png",
                    text: "Download CV",
                    press: () {},
                    ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

