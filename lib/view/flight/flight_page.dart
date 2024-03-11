import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/view/flight/views/boardertimer.dart';
import 'package:airport_app/view/flight/views/flightmenu.dart';
import 'package:airport_app/view/flight/views/profile_details.dart';
import 'package:airport_app/view/flight/widgets/custom_divider.dart';
import 'package:airport_app/view/flight/views/flightcard.dart';
import 'package:airport_app/view/flight/widgets/sharebuttons.dart';
import 'package:flutter/material.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double desiredWidth = 370.0;
    double desiredHeight = 200.0;

    double width =
        screenSize.width > desiredWidth ? desiredWidth : screenSize.width;
    double height =
        screenSize.height > desiredHeight ? desiredHeight : screenSize.height;
    double containerHeight = MediaQuery.of(context).size.height * 0.05;
    double containerWidth = MediaQuery.of(context).size.width * 0.62;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            ProfileWithDetails(height: height, width: width),
            FlightMenu(
                containerHeight: containerHeight,
                containerWidth: containerWidth),
           const FlightCard(),
            verticalGap(10),
           const BoarderTimer(),
            verticalGap(15),
            ShareButtons(),
            verticalGap(10),
            const CustomBoarder(),
            verticalGap(7),
            FlightCard(),
            verticalGap(10),
          ],
        )),
      ),
    );
  }
}
