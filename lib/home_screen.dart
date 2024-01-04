import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/static/keys.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/sections/about/about_section.dart';
import 'package:flutter_application_1/sections/contact/contact_section.dart';
import 'package:flutter_application_1/sections/feedback/feedback_section.dart';
import 'package:flutter_application_1/sections/recent_work/recent_work_section.dart';
import 'package:flutter_application_1/sections/services/service_section.dart';
import 'package:flutter_application_1/sections/topSection/top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  //ye dekho tum yahan confuse ho rhi thi ye key alag se hum file mein define krtey hein
  // mein ne galti se keyholder mein rkhne k bajaye yahan rkh di thi ye wali key
  //yahan rkh do to bhi msla nhi h kaam bilkul sahi ho ga
  //keyholders banane ka maqsad kia h takey code bht clean saf suthra nazar aye
  //best code wohi hota h jo 100 lines se zada cross na kre
  //nhi to krne ko to hum ik hi file bana k bhi us mein sari cheezein add kr sktey the kaam tab bhi sahi chalta lekin clean nhi hota code
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: KeyHolders.scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopSection(),
            const SizedBox(height: kDefaultPadding * 2),
            GestureDetector(
                onTap: () {
                  Scrollable.ensureVisible(
                    KeyHolders.desktop_aboutKey.currentContext!,
                    duration: const Duration(milliseconds: 1200),
                  );
                },
                child: const AboutSection()),
                //ye ho nhi rha mujhe detail mein dekhna apare ga koi cheez miss hui h 
                //tum ik kaam kro meri porfolio screen wali file se pura code dekh k krni ki koshish kro
            const ServiceSection(),
            const RecentWorkSection(),
            const FeedbackSection(),
            const SizedBox(height: kDefaultPadding),
            const ContactSection(),
            // This SizeBox just for demo
            const SizedBox(
              height: 500,
            ),
          ],
        ),
      ),
    );
  }
}
