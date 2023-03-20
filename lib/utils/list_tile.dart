import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;

  const MyListTile({required this.iconImagePath, required this.tileTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //icon
        Container(
          height: 60,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(iconImagePath),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tileTitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
        const Icon(Icons.arrow_forward_ios),
        //transactions
      ],
    );
  }
}
