import 'package:flutter/material.dart';

class InTransitPage extends StatelessWidget {
  const InTransitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(
                width: double.infinity,
                child: InkWell(
                    splashColor: Color.fromRGBO(254, 213, 111, 1),
                    onTap: () {},
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Color.fromRGBO(254, 213, 111, 1),
                        elevation: 1,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shipping Order Number",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("data"),
                              Text("Product",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("data"),
                              Text("Phase",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("data"),
                              Text("Type",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("data"),
                              Text("Arrival Date",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("data")
                            ],
                          ),
                        ))))
          ]),
        )
      ]),
    );
  }
}
