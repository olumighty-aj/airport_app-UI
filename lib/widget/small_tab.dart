import 'package:flutter/material.dart';

class smallTab extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;

  const smallTab({super.key, required this.title, required this.color, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
