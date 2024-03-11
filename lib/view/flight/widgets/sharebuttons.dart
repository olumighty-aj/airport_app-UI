import 'package:airport_app/utils/boarding_pass.dart';
import 'package:airport_app/view/flight/atoms/sharebutton.dart';
import 'package:flutter/material.dart';

class ShareButtons extends StatelessWidget {
  const ShareButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: carddetails
          .map((item) => BoardingButton(boardingDetails: item))
          .toList(),
    );
  }
}