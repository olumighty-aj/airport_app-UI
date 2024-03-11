import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PublicTransport extends StatelessWidget {
  final icon, transport, time;
  const PublicTransport({
    super.key,required this.icon, required this.transport, required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(icon),
              horizontalGap(10),
              Text(
                transport,
                style: mediumStyle(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                time,
                style: TextStyle(color: kSmallTextKcolor, fontSize: 11),
              ),
              const SizedBox(
                width: 22,
              ),
              SvgPicture.asset("assets/svg/arrow.svg"),
            ],
          )
        ],
      ),
    );
  }

  TextStyle mediumStyle() {
    return TextStyle(
                  color: kPrimaryKcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500);
  }
}
