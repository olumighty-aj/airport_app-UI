import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/utils/taxi_transport.dart';
import 'package:flutter/material.dart';

class TaxisServices extends StatelessWidget {
  const TaxisServices({
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
                "Taxi Service",
                style: headerStyle(),
              ),
            ),
             Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Wrap(
                              spacing: 8.0,
                              runSpacing: 8.0,
                              children: taxitransport.map((taxi) {
                                return Container(
                  height: 70,
                  width: 92,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Column(
                    children: [
                      verticalGap(5),
                      Image.asset(taxi.image, width: 100,),
                      verticalGap(5),
                      Text("\$\$\$\$\$\$",)
                    ],
                  ),
                                );
                              }).toList(),
                            ),
                )
                
              ],
            )
          ],
        ),
      ),
    );
   
  }
}
