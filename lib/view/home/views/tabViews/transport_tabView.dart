
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/view/home/widget/contact_airport.dart';
import 'package:airport_app/view/home/widget/self_parking.dart';
import 'package:airport_app/view/home/widget/taxi_service.dart';
import 'package:airport_app/view/home/widget/terminal_map.dart';
import 'package:airport_app/view/home/widget/transport_service.dart';
import 'package:airport_app/view/home/atoms/airport_contact_button.dart';
import 'package:flutter/material.dart';

class TransportTabView extends StatelessWidget {
  const TransportTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
