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
      userPic: "D:\flutter projects\flutter_application_1\flutter_application_1/assets/images/userPic.jpg",
      color: const Color(0xFFFFF300),
    ),
    Feedback(
      id: 2,
      name: "Armish",
      review: review,
      userPic:"D:\flutter projects\flutter_application_1\flutter_application_1/assets/images/userPic.jpg",
      color: const Color(0xFFD9FFFC),
      ),
      Feedback(
        id: 3,
        name: "Armish",
        review: review,
        userPic: "D:\flutter projects\flutter_application_1\flutter_application_1/assets/images/userPic.jpg",
        color: const Color(0xFFFFE0E0),
      ),
    ];

    String review = 
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when Ink unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';
