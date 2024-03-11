import 'package:airport_app/constant.dart';
import 'package:airport_app/utils/sizer.dart';
import 'package:airport_app/view/home/tabbar.dart';
import 'package:airport_app/view/home/widget/airport_details.dart';
import 'package:airport_app/view/home/atoms/country_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: kGlobalPadding,
          child: Column(
            children: [
              const Header(),
              verticalGap(20),
              const Airportdetails(),
              verticalGap(20),
              TabbarWithTabview(tabController: _tabController),
            ],
          ),
        ),
      ),
    );
  }
}
