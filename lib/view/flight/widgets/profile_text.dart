import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class profleText extends StatelessWidget {
  final String title;
  final int number;
  const profleText({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('#,###');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalGap(12),
        Text(title),
        Text(
          formatter.format(number),
          style: mediumStyle(),
        ),
      ],
    );
  }
}
