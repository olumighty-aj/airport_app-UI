
import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:flutter/material.dart';

class BoarderTimer extends StatelessWidget {
  const BoarderTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kPrimaryKcolor,
      elevation: .6,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: kPrimaryKcolor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: kGlobalPadding,
      child: Padding(
        padding: kGlobalPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Boarding closes in 00:30",
                  style: whitetextStyle(),
                ),
                verticalGap(7),
                Text(
                  "On time",
                  style: minismallTextStyle(),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: boradingpass,
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.door_front_door,
                          size: 20,
                        ),
                        Text("T20", style:blacktextStyle(),)
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
