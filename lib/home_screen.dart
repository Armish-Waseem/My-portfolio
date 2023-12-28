import 'package:flutter/material.dart';
import 'package:flutter_application_1/sections/about/about_section.dart';
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
            AboutSection(),
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
