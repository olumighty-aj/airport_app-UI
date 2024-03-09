import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 200,
            width: 370,
            color: Colors.red,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 15,
                  child: Container(
                    height: 65,
                    width: 325,
                    decoration: BoxDecoration(
                      border: Border(
                         left: BorderSide(width: 2.0, color: Colors.black),
      top: BorderSide(width: 2.0, color: Colors.black),
      bottom: BorderSide(width: 2.0, color: Colors.black),
      right: BorderSide.none, // No border on the right
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  )
                  )
              ],
            ),
          ),


          Flightmenu()
        ],
      )),
    );
  }
}

class Flightmenu extends StatelessWidget {
  const Flightmenu({
    super.key,
  });

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
                children: [
                  Text(
                    "My Flights",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: KPrimaryKcolor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        color: KContainerColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(
                        "assets/svg/arrow_down.svg",
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svg/search.svg",
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SvgPicture.asset(
                    "assets/svg/add.svg",
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 36,
            width: 235,
            decoration: BoxDecoration(
                color: KContainerColor,
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The number of flights Unsorted (12)",
                  style: TextStyle(
                      color: KPrimaryKcolor,
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
