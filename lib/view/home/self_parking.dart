import 'package:airport_app/constant.dart';
import 'package:airport_app/widget/parking_details.dart';
import 'package:airport_app/widget/small_tab.dart';
import 'package:flutter/material.dart';

class Self_parking extends StatelessWidget {
  const Self_parking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10),
              child: Text(
                "Self Parking",
                style: TextStyle(
                    color: KPrimaryKcolor,
                    fontSize: 25,
                    fontWeight:
                        FontWeight.w800),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets
                      .symmetric(
                      horizontal: 10),
                  child: Row(
                    children: [
                      smallTab(
                        title: "T1",
                        color: KPrimaryKcolor,
                        textColor:
                            Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      smallTab(
                        title: "T2",
                        color:
                            KContainerColor,
                        textColor:
                            Colors.black,
                      ),
                    ],
                  ),
                ),
                ParkingDetails(
                  icon: "assets/svg/bike.svg",
                  typeofTrans: "Two wheeler",
                  price: 50,
                ),
                ParkingDetails(
                  icon: "assets/svg/car.svg",
                  typeofTrans: "Car Parking",
                  price: 100, 
                ),
                ParkingDetails(
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