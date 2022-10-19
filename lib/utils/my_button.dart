import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton(
      {super.key, required this.iconImagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500, blurRadius: 20, spreadRadius: 2),
          ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
          height: 70,
          child: Center(child: Image.asset(iconImagePath)),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          buttonText,
          style: TextStyle(
              color: Colors.grey[700],
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
