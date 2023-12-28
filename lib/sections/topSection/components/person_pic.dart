import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    constraints: BoxConstraints(maxHeight: 1060, maxWidth: 239),
    child: Image.asset("assets/images/person.png"),
    );
  }
}