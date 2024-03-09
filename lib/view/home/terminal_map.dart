import 'package:airport_app/constant.dart';
import 'package:airport_app/widget/small_tab.dart';
import 'package:flutter/material.dart';

class Terminal_map extends StatelessWidget {
  const Terminal_map({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "Terminal Map",
              style: TextStyle(
                  color: KPrimaryKcolor,
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    smallTab(
                      title: "T1",
                      color: KPrimaryKcolor,
                      textColor: Colors.white,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    smallTab(
                      title: "T2",
                      color: KContainerColor,
                      textColor: Colors.black,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    smallTab(
                      title: "T3",
                      color: KContainerColor,
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
                        color: KsmallTextKcolor,
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
