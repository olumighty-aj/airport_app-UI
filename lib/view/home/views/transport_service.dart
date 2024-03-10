
import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/string_constant.dart';
import 'package:airport_app/view/home/widget/public_tansport.dart';
import 'package:flutter/material.dart';

class TransportServices extends StatelessWidget {
  const TransportServices({
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
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Padding(
              padding: kGlobalPadding,
              child: Text(
                publicTransport,
                style: headerStyle(),
              ),
            ),
            const Column(
              children: [
                PublicTransport(
                  icon: metro,
                  transport: "Metro",
                  time: flighttime,
                ),
                Padding(
                  padding: kGlobalPadding,
                  child: Divider(
                    thickness: 0.5,
                  ),
                ),
                
                
                 PublicTransport(
                  icon: bus,
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
