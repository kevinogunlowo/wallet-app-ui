import 'package:flutter/material.dart';

import 'color.dart';

class Buttons extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const Buttons(
      {super.key, required this.iconImagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Container(
            //icon
            height: 60,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 25,
                   // spreadRadius: 10,
                  )
                ]),
            child: Center(
              child: Image.asset(iconImagePath),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        //text
        Text(
          buttonText,
          style: TextStyle(fontSize: 13, color: AppColors.textColor),
        ),
      ],
    );
  }
}
