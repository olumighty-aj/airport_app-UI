
import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';

class Taxis_services extends StatelessWidget {
  const Taxis_services({
    super.key,
    required this.taxiServices,
  });

  final List<Map<String, dynamic>> taxiServices;

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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
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
    
                return Card(
                  elevation: 2,
                  color: Colors.white,

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
    );
  }
}
