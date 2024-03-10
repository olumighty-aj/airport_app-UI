
import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/view/flight/widgets/dottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
       color: Colors.white,
      elevation: .6,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
      color: Colors.white,
      width: 2,
    ),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: kGlobalPadding,
      child: Padding(
        padding: kGlobalPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Mon, 20 Dec 24",
                      style: mediumStyle(),
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(indigo),
                    horizontalGap(5),
                    Text(
                      "6E 725",
                      style: smallTextStyle(),
                    )
                  ],
                )
              ],
            ),
            DottedLineDivider(),
            Padding(
              padding: kGlobalPadding,
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "DEL",
                          style: headerStyle(),
                        ),
                        Text(
                          " 08:15",
                          style: headerStylesp(),
                        )
                      ],
                    ),
                    Text("🇮🇳 New delhi", style: minismallTextStyle(),)
                  ],
                ),
    
                 Text("2h 5m", style: minismallTextStyle(),),
                 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          "10:15 BOM",
                          style: headerStyle(),
                        ),
                      ],
                    ),
                    Text("Mumbai 🇵🇭", style: minismallTextStyle(),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
