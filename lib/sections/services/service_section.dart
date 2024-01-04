import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/static/keys.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/Service.dart';

import '../../components/section_title.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.desktop_serviceKey,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        
        children: [
          const SectionTitle(
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFF0000),
            
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(services.length, (index) => ServiceCard(index: index)),
            ),
        ],
      ),
    );
  }
}

