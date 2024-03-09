import 'package:airport_app/constant.dart';
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
              const SizedBox(
                width: 22,
              ),
              Text(
                transport,
                style: TextStyle(
                    color: KPrimaryKcolor,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
          Row(
            children: [
              Text(
                time,
                style: TextStyle(color: KsmallTextKcolor, fontSize: 11),
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
}
