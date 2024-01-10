// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/static/keys.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Recent Work",
    "Feedback",
    "Contact"
  ];
   List<GlobalKey> menuKeys = [
    KeyHolders.desktop_aboutKey,
    KeyHolders.desktop_aboutKey,
    KeyHolders.desktop_serviceKey,
    KeyHolders.desktop_recentworkKey,
    KeyHolders.desktop_feedbackKey,
    KeyHolders.desktop_contactKey
    // Add keys for other menu items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints:  BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration:  BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
      Scrollable.ensureVisible(
          menuKeys[index].currentContext!,
          duration: const Duration(milliseconds: 1200),
        );
    },
    onHover: (value) {
      setState(() {
        value ? hoverIndex = index : hoverIndex = selectedIndex;
      });
    },
    child: Container(
      constraints: const BoxConstraints(minWidth: 122),
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(menuItems[index],
          style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          //Hover
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: selectedIndex != index&& hoverIndex == index ? -20 : -32,
            child: Image.asset("assets/images/Hover.png"),
            ),
            // Select
            AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: selectedIndex == index ? -2 : -32,
            child: Image.asset("assets/images/Hover.png"),
            ),
        ],
      ),
      ),
  );
}

//ye wali file change kro
//jese meri portfolioscreen h wesi banao takey tum us mein gesturedetector laga sko