import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Airport_details extends StatelessWidget {
  final String detailSvg, detail, littledetail;
  const Airport_details({
    super.key, required this.detail, 
    required this.littledetail, 
    required this.detailSvg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          detailSvg,
          width: 20,
          height: 20,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          detail,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        
        Text(
          littledetail,
          style: TextStyle(
              color: KsmallTextKcolor,
              fontSize: 11,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
