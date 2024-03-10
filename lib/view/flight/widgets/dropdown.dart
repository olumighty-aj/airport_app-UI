import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String selectedValue = 'Option 1';
  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  Map<String, String> itemSvgPaths = {
    'Option 1': 'assets/svg/me.svg',
    'Option 2': 'assets/svg/friend.svg',
    'Option 3': 'assets/svg/me.svg',
    'Option 4': 'assets/svg/friend.svg',
  };

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      onChanged: (String? value) {
        setState(() {
          selectedValue = value!;
        });
      },
      items: dropdownItems.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            children: [
              if (selectedValue != value)
                SvgPicture.asset(
                  itemSvgPaths[value]!,
                  width: 24,
                  height: 24,
                ),
              if (selectedValue != value) horizontalGap(10),
              Text(
                value,
                style: TextStyle(
                  fontSize: selectedValue == value ? 24 : 16,
                  fontWeight: selectedValue == value ? FontWeight.bold : FontWeight.normal,
                  color: selectedValue == value ? kPrimaryKcolor : kPrimaryKcolor,
                ),
              ),
              if (selectedValue == value)
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
            ],
          ),
        );
      }).toList(),
      style: miniStyle(),
      underline: Container(
        height: 0,
        color: Colors.transparent,
      ),
    );
  }
}