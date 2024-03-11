import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/view/home/atoms/parking_details.dart';
import 'package:airport_app/view/home/atoms/small_tab.dart';
import 'package:flutter/material.dart';

class SelfParking extends StatelessWidget {
  const SelfParking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.white,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: kGlobalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: kGlobalPadding,
              child: Text(
                "Self Parking",
                style: headerStyle(),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const smallTab(
                        title: "T1",
                        color: kPrimaryKcolor,
                        textColor: Colors.white,
                      ),
                     verticalGap(15),
                      const smallTab(
                        title: "T2",
                        color: kContainerColor,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                verticalGap(10),
                const ParkingDetails(
                  icon: bike,
                  typeofTrans: "Two wheeler",
                  price: 50,
                ),
              const  ParkingDetails(
                  icon: "assets/svg/car.svg",
                  typeofTrans: "Car Parking",
                  price: 100,
                ),

             const  ParkingDetails(
                  icon: "assets/svg/fastcar.svg",
                  typeofTrans: "Electric Car Parking",
                  price: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
