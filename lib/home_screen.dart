import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/sections/about/about_section.dart';
import 'package:flutter_application_1/sections/contact/contact_section.dart';
import 'package:flutter_application_1/sections/feedback/feedback_section.dart';
import 'package:flutter_application_1/sections/recent_work/recent_work_section.dart';
import 'package:flutter_application_1/sections/services/service_section.dart';
import 'package:flutter_application_1/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
            // This SizeBox just for demo
            SizedBox(
              height: 500,
            ),
          ],
        ),
      ),

    );
  }
}
