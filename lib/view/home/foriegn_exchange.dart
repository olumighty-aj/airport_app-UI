import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';

class AccordionSection extends StatefulWidget {
  @override
  _AccordionSectionState createState() => _AccordionSectionState();
}

class _AccordionSectionState extends State<AccordionSection> {
  int _selectedIndex = -1;
  List<Map<String, String>> accordionData = [
    {
      'title': 'Travelex',
      'body':
          'Terminal 3- \nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room'
    },
    {
      'title': 'Al Ansari Exchange',
      'body':
          'Terminal 3- \nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room'
    },
    {
      'title': 'Emirates NBD',
      'body':
          'Terminal 3- \nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room'
    },
  ];
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text(
                "Foreign exchange",
                style: TextStyle(
                    color: KPrimaryKcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ExpansionPanelList.radio(
              expandedHeaderPadding: EdgeInsets.zero,
              children: [
                for (int index = 0; index < accordionData.length; index++)
                  ExpansionPanelRadio(
                    value: index,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          accordionData[index]['title'] ?? '',
                          style: TextStyle(
                              fontSize: 16,
                              color: KPrimaryKcolor,
                              fontWeight: FontWeight.w700),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                        accordionData[index]['body'] ?? '',
                        style: TextStyle(
                          color: KsmallTextKcolor,
                        ),
                      ),
                    ),
                  ),
              ],
              animationDuration: kThemeAnimationDuration,
              elevation: 2,
              initialOpenPanelValue: _selectedIndex,
            ),
          ],
        ),
      ),
    );
  }
}
