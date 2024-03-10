import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/boarding_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoardingButton extends StatelessWidget {
  final BoardingDetails boardingDetails;
  const BoardingButton({
    super.key,
    required this.boardingDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IntrinsicWidth(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: kContainerColor,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SvgPicture.asset(boardingDetails.svgIcon),
                
                Text(
                  boardingDetails.title,
                  style: blackminitextStyle(),
                )
              ]),
            ),
          ),
        )
      ],
    );
  }
}