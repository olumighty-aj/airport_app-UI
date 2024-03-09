
import 'package:airport_app/constant.dart';
import 'package:airport_app/widget/public_tansport.dart';
import 'package:flutter/material.dart';

class Transport_services extends StatelessWidget {
  const Transport_services({
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
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
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
                "Public Transport",
                style: TextStyle(
                    color: KPrimaryKcolor,
                    fontSize: 25,
                    fontWeight:
                        FontWeight.w800),
              ),
            ),
            const Column(
              children: [
                PublicTransport(
                  icon: "assets/svg/metro.svg",
                  transport: "Metro",
                  time: "6am - 10pm",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:10, horizontal: 10),
                  child: Divider(
                    thickness: 0.5,
                  ),
                ),
                
                
                 PublicTransport(
                  icon: "assets/svg/bus.svg",
                  transport: "Bus",
                  time: "Avaliable 24hrs",
                 ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
