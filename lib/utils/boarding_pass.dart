import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardingDetails {
  final String svgIcon;
  final String title;

  BoardingDetails({required this.svgIcon, required this.title});
}

List<BoardingDetails> carddetails = [
  BoardingDetails(
    svgIcon: "assets/svg/ticket.svg",
    title: "Boarding Pass",
  ),
  BoardingDetails(
    svgIcon: "assets/svg/whatsapp.svg",
    title: "Share trip",
  ),
  BoardingDetails(
    svgIcon: "assets/svg/more.svg",
    title: "",
  ),
];
