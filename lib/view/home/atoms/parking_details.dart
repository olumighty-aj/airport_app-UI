import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ParkingDetails extends StatelessWidget {
  final String icon;
  final String typeofTrans;
  final int price;
  const ParkingDetails({
    super.key,
    required this.icon,
    required this.typeofTrans,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                icon,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                typeofTrans,
                style: TextStyle(color: kTextColor2, fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              Text(
                "AED $price/day",
                style: TextStyle(
                  fontSize: 14,
                    color: kPrimaryKcolor, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.warning_rounded,
                size: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
