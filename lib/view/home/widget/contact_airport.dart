import 'package:flutter/material.dart';
import 'package:airport_app/constant.dart';
import 'package:airport_app/view/home/atoms/contacts.dart';

class ContactAirport extends StatelessWidget {
  final List<String> contactTitles = ["Police", "Lost and found", "Transport", "Head office"];

   ContactAirport({Key? key});

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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: kSmallestPadding,
              child: Text(
                "Contact Airport",
                style: headerStyle(),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(contactTitles.length,(index) {
                return Column(
                  children: [
                    contacts(
                      title: contactTitles[index],
                      isLastItem: index == contactTitles.length - 1,
                    ),
                    // if (index != contactTitles.length - 1) 
                    //   const Padding(
                    //     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    //     child: Divider(),
                    //   ),
                  ],
                );
              }),
            )
            ],
          ),
        ),
      
    );
  }
}