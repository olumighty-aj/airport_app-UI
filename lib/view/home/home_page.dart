import 'package:airport_app/constant.dart';
import 'package:airport_app/view/home/transport_service.dart';
import 'package:airport_app/widget/airport_details.dart';
import 'package:airport_app/widget/parking_details.dart';
import 'package:airport_app/widget/public_tansport.dart';
import 'package:airport_app/widget/small_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> taxiServices = [
    {
      'imagePath': 'assets/img/uber.png',
    },
    {
      'imagePath': 'assets/img/careem.png',
    },
    {
      'imagePath': 'assets/img/yango.png',
    },
    {
      'imagePath': 'assets/img/blacklane.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dubai Airport - DXB",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("Dubia."),
                      SizedBox(
                        width: 3,
                      ),
                      Text("🇦🇪 United Arab Emirates")
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 298,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/img/bg.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.grey.shade100),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 7,
                      child: Center(
                        child: Container(
                          height: 140,
                          width: 315,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  children: [
                                    Airport_details(
                                      detailSvg: "assets/svg/cloud.svg",
                                      detail: '19°C',
                                      littledetail: 'Cloudy',
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Airport_details(
                                      detailSvg: "assets/svg/calender.svg",
                                      detail: '30 Jan',
                                      littledetail: 'Mon',
                                    ),
                                    SizedBox(
                                      width: 22,
                                    ),
                                    Airport_details(
                                      detailSvg: "assets/svg/time.svg",
                                      detail: '8:45 PM',
                                      littledetail: 'GMT+4',
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Airport_details(
                                      detailSvg: "assets/svg/currency.svg",
                                      detail: 'AED',
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/svg/direction.svg"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Get Direction",
                                          style: TextStyle(
                                            color: KPrimaryKcolor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/svg/call.svg"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Call Airport",
                                          style: TextStyle(
                                              color: KPrimaryKcolor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17),
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
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height,
                child: DefaultTabController(
                  length: 4, // Number of tabs
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [
                        TabBar(
                          tabs: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Tab(
                                text: 'Transport',
                              ),
                            ),
                            Container(
                              child: Tab(
                                text: 'Terminal',
                              ),
                            ),
                            Container(
                              child: Tab(
                                text: 'Forex',
                              ),
                            ),
                            Container(
                              child: Tab(
                                text: 'Contatct Info',
                              ),
                            ),
                          ],
                          indicator: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          labelStyle: TextStyle(fontSize: 16.0),
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorPadding: EdgeInsets.all(8.0),
                          indicatorColor: Colors.red,
                          indicatorWeight: 2.0,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              SingleChildScrollView(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Taxis_services(
                                          taxiServices: taxiServices),
                                      Transport_services(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              // border: Border.all(
                                              //     color: KboderColor, width: 2),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.white
                                                      .withOpacity(0.7),
                                                  spreadRadius: 1,
                                                  blurRadius: 7,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20)),
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
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.green,
                                child: Center(child: Text('Tab 2 Content')),
                              ),
                              Container(
                                color: Colors.yellow,
                                child: Center(child: Text('Tab 3 Content')),
                              ),
                              Container(
                                color: Colors.yellow,
                                child: Center(child: Text('Tab 4 Content')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class Taxis_services extends StatelessWidget {
  const Taxis_services({
    super.key,
    required this.taxiServices,
  });

  final List<Map<String, dynamic>> taxiServices;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            border: Border.all(color: KContainerColor, width: 2),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Text(
                "Taxi Service",
                style: TextStyle(
                    color: KPrimaryKcolor,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 7,
                  crossAxisSpacing: 7,
                ),
                itemCount: taxiServices.length,
                itemBuilder: (context, index) {
                  final item = taxiServices[index];

                  return Container(
                      height: 80,
                      width: 85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                              child: Image.asset(
                            item['imagePath'],
                            width: 100,
                          )),
                          const Spacer(),
                          Center(
                            child: Text(
                              "\$\$\$\$\$\$\$",
                              style: TextStyle(
                                  color: KsmallTextKcolor, fontSize: 11),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
