import 'package:airport_app/constant.dart';
import 'package:airport_app/view/home/widget/small_tab.dart';
import 'package:flutter/material.dart';

class TerminalMap extends StatelessWidget {
  const TerminalMap({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "Terminal Map",
              style: TextStyle(
                  color: kPrimaryKcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    smallTab(
                      title: "T1",
                      color: kPrimaryKcolor,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    smallTab(
                      title: "T2",
                      color: kContainerColor,
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    smallTab(
                      title: "T3",
                      color: kContainerColor,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            const  SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Stack(
                  children: [
                    Container(
                      height: 88,
                      width: 294,
                      decoration: BoxDecoration(
                        color: kSmallTextKcolor,
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("assets/img/map.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 110,
                      child: Container(
                        height: 35,
                        width: 73,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.black),
                        child: const Center(
                          child: Text(
                            "View",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
