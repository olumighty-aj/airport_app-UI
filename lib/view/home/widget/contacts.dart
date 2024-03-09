import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class contacts extends StatelessWidget {
  final String title;
  const contacts({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: KPrimaryKcolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              Container(
                height: 37,
                width: 50,
                decoration: BoxDecoration(
                    color: KContainerColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/svg/black_call.svg",
                  )),
                ),
              )
            ],
          ),
        ),
       
      ],
    );
  }
}
