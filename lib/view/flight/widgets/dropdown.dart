import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  bool isDropdownOpen = false;
  String selectedItem = '';

  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
            });
          },
          child: Row(
            children: [
              Text(
                'Select an item: ',
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        Visibility(
          visible: isDropdownOpen,
          child: DropdownButton<String>(
            value: selectedItem,
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedItem = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }
}