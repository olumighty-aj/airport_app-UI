import 'package:airport_app/constant.dart';
import 'package:airport_app/view/flight/widgets/profile_text.dart';
import 'package:flutter/material.dart';

class ProfileWithDetails extends StatelessWidget {
  const ProfileWithDetails({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/img/saudimap.PNG",
            )),
        color: kbackgroudColor,
      ),
      child: Stack(
        children: [
          Positioned(
              top: 20,
              left: 20,
              child: Container(
                height: 65,
                width: 310,
                decoration: BoxDecoration(
                  color: kbackgroudColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/img/profilepicture.jpg"),
                        radius: 30,
                      ),
                      
                       profleText(title: "Flights", number: 04, ),
                        profleText(title: "Countries", number: 06, ),
                      profleText(title: "Distance", number: 44536, ),
                    ]),
              ))
        ],
      ),
    );
  }
}
