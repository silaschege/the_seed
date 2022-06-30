import 'package:flutter/material.dart';
import 'package:seed/shipping/In_transit.dart';
import 'package:seed/shipping/received.dart';

class ShippingController extends StatelessWidget {
  const ShippingController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 20,
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // Creates border
              color: Color.fromRGBO(254, 213, 111, 1),
            ),
            unselectedLabelColor: Color.fromRGBO(83, 166, 98, 1),
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: "In Transit",
              ),
              Tab(
                text: "Received",
              ),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            InTransitPage(),
            ReceivedPage(),
          ],
        ),
      ),
    );
  }
}
