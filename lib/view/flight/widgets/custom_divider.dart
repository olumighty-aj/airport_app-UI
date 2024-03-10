import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';

class CustomBoarder extends StatelessWidget {
  const CustomBoarder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: kSmallTextKcolor,
      height: 1.5,
    thickness: .1,
    );
  }
}