import 'package:airport_app/constant.dart';
import 'package:airport_app/view/flight/flight_page.dart';
import 'package:airport_app/view/home/contact_airport.dart';
import 'package:airport_app/view/home/foriegn_exchange.dart';
import 'package:airport_app/view/home/self_parking.dart';
import 'package:airport_app/view/home/taxi_service.dart';
import 'package:airport_app/view/home/terminal_map.dart';
import 'package:airport_app/view/home/transport_service.dart';
import 'package:airport_app/view/home/widget/airport_details.dart';
import 'package:airport_app/view/home/widget/black_button.dart';
import 'package:airport_app/view/home/widget/contacts.dart';
import 'package:airport_app/view/home/widget/small_tab.dart';
import 'package:flutter/gestures.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dubai Airport - DXB",
                    style: TextStyle(
                        color: KPrimaryKcolor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("Dubia.", style: TextStyle(color: KsmallTextKcolor, fontSize: 12),),
                   const   SizedBox(
                        width: 3,
                      ),
                      Text("🇦🇪 United Arab Emirates", style: TextStyle(color: KsmallTextKcolor, fontSize: 12),)
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
                      left: 12,
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
                                    horizontal: 25, vertical: 15),
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
                  length: 4,
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
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Taxis_services(taxiServices: taxiServices),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Transport_services(),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Self_parking(),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Terminal_map(),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    AccordionSection(),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Contact_airport(),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        black_button(
                                          icon:
                                              "assets/svg/white_direction.svg",
                                          text: "Get direction",
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const    FlightPage()));
                                          },
                                        ),
                                        black_button(
                                          icon: "assets/svg/white_call.svg",
                                          text: "Call airport",
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const    FlightPage()));
                                          },
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
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
