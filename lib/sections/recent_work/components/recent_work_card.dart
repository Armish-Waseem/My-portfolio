import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/RecentWork.dart';

class RecentWorkCard extends StatefulWidget {
  //just press "command + ."
  const RecentWorkCard({
    super.key, required this.index, required this.press,
  });

final int index; 
final Function press;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {widget.press();
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 320,
        width: 520,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [Image.asset(recentworks[widget.index].image),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(recentworks[widget.index].category.toUpperCase()),
                  const SizedBox(height: kDefaultPadding /2),
                  Text(
                    recentworks[widget.index].title, 
                  style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(height: 1.5),
                  ),
                  const SizedBox(height: kDefaultPadding),
                  const Text(
                    "View Details",
                    style: 
                    TextStyle(decoration: TextDecoration.underline),
                    ),
    
                ],
              ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}

