import 'package:airport_app/constant.dart';
import 'package:airport_app/view/home/widget/contacts.dart';
import 'package:flutter/material.dart';

class Contact_airport extends StatelessWidget {
  const Contact_airport({
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
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5),
              child: Text(
                "Contact Airport",
                style: TextStyle(
                    color: KPrimaryKcolor,
                    fontSize: 20,
                    fontWeight:
                        FontWeight.w500),
              ),
            ),
            const Column(
              children: [
                contacts(title: "Police"),
                 Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Divider(),
                    ),
                contacts(
                    title: "Lost and found"),
                      Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Divider(),
                    ),
                contacts(title: "Transport"),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Divider(),
                    ),
                contacts(title: "Head office"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
