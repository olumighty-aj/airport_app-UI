
import 'package:airport_app/constant.dart';
import 'package:airport_app/view/home/views/tabViews/transport_tabView.dart';
import 'package:flutter/material.dart';

class TabbarWithTabview extends StatelessWidget {
  const TabbarWithTabview({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(18),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Container(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Transport",
                    style: tabsmallTextStyle(),
                  ),
                )),
              ),
              Tab(
                child: Container(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Terminal",
                    style: tabsmallTextStyle(),
                  ),
                )),
              ),
              Tab(
                child: Container(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Forex",
                    style: tabsmallTextStyle(),
                  ),
                )),
              ),
              Tab(
                child: Container(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Contact Info",
                    style: tabsmallTextStyle(),
                  ),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          height: 1340,
          child:
              TabBarView(
                controller: _tabController,
                 children: const [
            TransportTabView(),
            Text("Thanks"),
            Text("You"),
            Text("For Considering me"),
          ]),
        )
      ],
    );
  }
}
