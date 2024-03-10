import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/view/flight/flight_page.dart';
import 'package:airport_app/view/home/views/contact_airport.dart';
import 'package:airport_app/view/home/views/foriegn_exchange.dart';
import 'package:airport_app/view/home/views/airport_details.dart';
import 'package:airport_app/view/home/views/self_parking.dart';
import 'package:airport_app/view/home/views/taxi_service.dart';
import 'package:airport_app/view/home/views/terminal_map.dart';
import 'package:airport_app/view/home/views/transport_service.dart';
import 'package:airport_app/view/home/widget/airport_contact_button.dart';
import 'package:airport_app/view/home/widget/airport_details.dart';
import 'package:airport_app/view/home/widget/black_button.dart';
import 'package:airport_app/view/home/widget/contacts.dart';
import 'package:airport_app/view/home/widget/country_header.dart';
import 'package:airport_app/view/home/widget/small_tab.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: kGlobalPadding,
          child: Column(
            children: [
              const Header(),
              verticalGap(20),
              const Airportdetails(),
              verticalGap(20),
              const TaxisServices(),
              verticalGap(20),
              const TransportServices(),
              verticalGap(20),
              const SelfParking(),
              verticalGap(20),
              const TerminalMap(),
              verticalGap(20),
               ContactAirport(),
              verticalGap(20),
              AirportContactButton(context)
            ],
          ),
        ),
      ),
    );
  }
}
