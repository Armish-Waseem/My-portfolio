import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;


  Feedback({required this.name, required this.review, required this.userPic, required this.id, required this.color});
  }

// List of demo feedbacks

  List<Feedback> feedbacks = [
    Feedback(
      id: 1,
      name: "Armish",
      review: review,
      userPic: "assets/images/userPic.png",
      color: const Color(0xFFFFF300),
    ),
    Feedback(
      id: 2,
      name: "Armish",
      review: review,
      userPic:"assets/images/userPic.png",
      color: const Color(0xFFD9FFFC),
      ),
      Feedback(
        id: 3,
        name: "Armish",
        review: review,
        userPic: "assets/images/userPic.png",
        color: const Color(0xFFFFE0E0),
      ),
    ];

    String review = 
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when Ink unknown printer took a galley of type and scrambled it to make a type specimen book.';

