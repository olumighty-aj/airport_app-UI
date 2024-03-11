import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class black_button extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onTap;
  const black_button({
    super.key, required this.icon, required this.text, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 156,
        decoration: BoxDecoration(
            color: kPrimaryKcolor, borderRadius: BorderRadius.circular(10)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset(icon),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          )
        ]),
      ),
    );
  }
}
