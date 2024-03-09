
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
          side: const BorderSide(
      color: Colors.white,
      width: 1.0,
    ),
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
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
                              letterSpacing: 2,
                                color: KDolarText, 
                                fontWeight: FontWeight.w500,
                                fontSize: 11),
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
