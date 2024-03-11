import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dubai Airport - DXB",
          style: HeaderStyle(),
        ),
        Row(
          children: [
            Text(
              "Dubia.",
              style: TextStyle(color: kSmallTextKcolor, fontSize: 12),
            ),
            horizontalGap(3),
           const Text(
              "🇦🇪 United Arab Emirates",
              style: TextStyle(color: kSmallTextKcolor, fontSize: 12),
            )
          ],
        )
      ],
    );
  }

  TextStyle HeaderStyle() {
    return TextStyle(
            color: kPrimaryKcolor,
            fontSize: 20,
            fontWeight: FontWeight.bold);
  }
}