
import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/view/flight/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlightMenu extends StatelessWidget {
  const FlightMenu({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
  });

  final double containerHeight;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [CustomDropdown()],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    search,
                  ),
                  horizontalGap(15),
                  SvgPicture.asset(
                    add,
                  )
                ],
              )
            ],
          ),
          verticalGap(10),
          Container(
            height: containerHeight,
            width: containerWidth,
            decoration: BoxDecoration(
                color: kContainerColor,
                borderRadius: BorderRadius.circular(30)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The number of flights Unsorted (12)",
                  style: TextStyle(
                      color: kPrimaryKcolor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
