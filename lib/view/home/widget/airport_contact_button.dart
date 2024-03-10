import 'package:airport_app/view/flight/flight_page.dart';
import 'package:airport_app/view/home/widget/black_button.dart';
import 'package:flutter/material.dart';

Row AirportContactButton(BuildContext context) {
    return Row(
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
                          );
  }

