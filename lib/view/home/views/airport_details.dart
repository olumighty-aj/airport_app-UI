import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/utils/string_constant.dart';
import 'package:airport_app/view/home/widget/airport_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Airportdetails extends StatelessWidget {
  const Airportdetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      height: 298,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage(headerimage), fit: BoxFit.cover),
          color: Colors.grey.shade100),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 12,
            child: Center(
              child: Container(
                height: mediaQuery.size.height * 0.2,
                width: mediaQuery.size.width * 0.88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      child: Row(
                        children: [
                          Airport_details(
                            detailSvg: cloud,
                            detail: '19°C',
                            littledetail: cloudy,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Airport_details(
                            detailSvg: calender,
                            detail: date,
                            littledetail: day,
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Airport_details(
                            detailSvg: time,
                            detail: flighttakeoftime,
                            littledetail: gmt,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Airport_details(
                            detailSvg: currency,
                            detail: aedcurrency,
                            littledetail: '\$1 = 3.67 AED',
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(direction),
                              horizontalGap(5),
                               Text(
                                getdirection,
                                style: miniStyle(),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(call),
                              horizontalGap(5),
                               Text(
                                "Call Airport",
                                style: miniStyle(),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

 
}
