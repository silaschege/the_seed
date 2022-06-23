import 'package:flutter/material.dart';
import 'package:seed/authentication/farmer_registration.dart';

class HomeSummaryPage extends StatelessWidget {
  const HomeSummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(83, 166, 98, 1),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(83, 166, 98, 1)),
            child: Column(children: <Widget>[
              Text("Total Paid",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ksh:",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text("1000",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              Text("Balance",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ksh:",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("-1000",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Color.fromRGBO(254, 213, 111, 1),
                        child: Column(
                          children: [
                            Text("Maize", style: TextStyle(fontSize: 20)),
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Color.fromRGBO(83, 166, 98, 1),
                                    child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // seed
                                              Text(
                                                "Seed",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        254, 213, 111, 1),
                                                    fontSize: 20),
                                              ),
                                              Row(children: [
                                                Column(children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Balance Ksh:",
                                                      ),
                                                      Text(
                                                        "1000",
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Paid Ksh:",
                                                      ),
                                                      Text(
                                                        "-1000",
                                                      ),
                                                    ],
                                                  )
                                                ]),
                                                SizedBox(
                                                  width: 50,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text('Pay',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          )), // <-- Text
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Icon(
                                                        // <-- Icon
                                                        Icons.savings,
                                                        size: 24.0,
                                                        color: Color.fromRGBO(
                                                            83, 166, 98, 1),
                                                      ),
                                                    ],
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color.fromRGBO(
                                                        254, 213, 111, 1),
                                                  ),
                                                ),
                                              ]),

                                              // fertilizer
                                              Text(
                                                "Fertilizer",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        254, 213, 111, 1),
                                                    fontSize: 20),
                                              ),
                                              Row(children: [
                                                Column(children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Balance Ksh:",
                                                      ),
                                                      Text(
                                                        "1000",
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Paid Ksh:",
                                                      ),
                                                      Text(
                                                        "-1000",
                                                      ),
                                                    ],
                                                  )
                                                ]),
                                                SizedBox(
                                                  width: 50,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text('Transactions',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          )), // <-- Text
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Icon(
                                                        // <-- Icon
                                                        Icons.receipt,
                                                        size: 24.0,
                                                        color: Color.fromRGBO(
                                                            83, 166, 98, 1),
                                                      ),
                                                    ],
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color.fromRGBO(
                                                        254, 213, 111, 1),
                                                  ),
                                                ),
                                              ]),
                                              // herbicide
                                              Text(
                                                "Herbicide",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        254, 213, 111, 1),
                                                    fontSize: 20),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Balance Ksh:",
                                                  ),
                                                  Text(
                                                    "1000",
                                                  ),
                                                ],
                                              ),
                                              Row(children: [
                                                Text(
                                                  "Paid Ksh:",
                                                ),
                                                Text(
                                                  "-1000",
                                                ),
                                              ])
                                            ]))))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ])));
  }
}
