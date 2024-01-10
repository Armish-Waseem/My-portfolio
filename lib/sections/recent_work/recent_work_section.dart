import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/section_title.dart';
import 'package:flutter_application_1/components/static/keys.dart';
import 'package:flutter_application_1/constants.dart';

import '../../components/hireme_card.dart';
import '../../models/RecentWork.dart';
import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       key: KeyHolders.desktop_recentworkKey,
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      //just for demo
      //  height: 600,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
          ),
      ),
      child:  Column(
       
        children: [
          Transform.translate(
            offset: const Offset(0, -80),
            child: const HireMeCard(),
          ),
          const SectionTitle(
            title: "Recent Works",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          const SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentworks.length,
                 (index) => RecentWorkCard(
                  index: index, 
                  press: () {},
                  ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}

