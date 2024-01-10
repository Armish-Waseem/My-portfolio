import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/default_button.dart';
import 'package:flutter_application_1/components/section_title.dart';
import 'package:flutter_application_1/components/static/keys.dart';
import 'package:flutter_application_1/constants.dart';

import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //yahan key define krein ge
      key: KeyHolders.desktop_contactKey,
      //this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: const Column(
        children:  [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
              title: "Contact Me",
              subTitle: "For Project inquiry and information",
              color: Color(0xFF07E24A)),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: const Color(0xFFD9FFFC),
                iconScr: "assets/images/skype.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
              SocialCard(
                color: const Color(0xFFE4FFC7),
                iconScr: "assets/images/whatsapp.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
              SocialCard(
                color: const Color(0xFFE8F0F9),
                iconScr: "assets/images/messenger.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const ContactForm()
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Wrap(
      spacing: kDefaultPadding * 2.5,
      runSpacing: kDefaultPadding * 1.5,
      children: [
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Your Name",
              hintText: "Enter Your Name",
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Email Address",
              hintText: "Enter Your Email Address",
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Project Type",
              hintText: "Select Project Type",
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Project Budget",
              hintText: "Select Project Budget",
            ),
          ),
        ),
        SizedBox(
          // height: 300,
          // TextField by default cover the height, i tryed to fix this problem but i cant
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Description",
              hintText: "Write Some Description",
            ),
          ),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        Center(
          child: FittedBox(
            child: DefaultButton(
              imageSrc: "assets/images/contact_icon.png", 
              text: "Contact Me!",
               press: () {},
               ),
          ),
        ),
      ],
    ));
  }
}
