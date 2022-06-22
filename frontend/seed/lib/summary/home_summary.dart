import 'package:flutter/material.dart';

class HomeSummaryPage extends StatelessWidget {
  const HomeSummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
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
        body: Column(children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text("summary")
        ]));
  }
}

// class NavigationDrawer extends StatelessWidget {
//   const NavigationDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Drawer();
// }
