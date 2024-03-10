import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/utils/boarding_pass.dart';
import 'package:airport_app/view/flight/views/boardertimer.dart';
import 'package:airport_app/view/flight/widgets/custom_divider.dart';
import 'package:airport_app/view/flight/widgets/dottedline.dart';
import 'package:airport_app/view/flight/widgets/dropdown.dart';
import 'package:airport_app/view/flight/views/flightcard.dart';
import 'package:airport_app/view/flight/views/sharebuttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height * 0.05;
    double containerWidth = MediaQuery.of(context).size.width * 0.62;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: kGlobalPadding,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 370,
                color: Colors.red,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      height: 60,
                      width: 310,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ))
                  ],
                ),
              ),
              FlightMenu(
                  containerHeight: containerHeight,
                  containerWidth: containerWidth),
              FlightCard(),
              verticalGap(10),
              BoarderTimer(),
              verticalGap(20),
              ShareButtons(),
              verticalGap(10),
             const CustomBoarder(),
              verticalGap(10),
            ],
          ),
        )),
      ),
    );
  }
}







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
                    "assets/svg/search.svg",
                  ),
                  horizontalGap(15),
                  SvgPicture.asset(
                    "assets/svg/add.svg",
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
            child: Row(
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
