import 'package:flutter/material.dart';

class ExpressPage extends StatefulWidget {
  ExpressPage({Key? key}) : super(key: key);

  @override
  State<ExpressPage> createState() => _ExpressPageState();
}

class _ExpressPageState extends State<ExpressPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Row(children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.search, color: Color.fromRGBO(83, 166, 98, 1)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(83, 166, 98, 1), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(83, 166, 98, 1), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  labelText: 'Search',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(83, 166, 98, 1),
                  ),
                  hintText: 'Search'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            iconSize: 24,
            color: Color.fromRGBO(254, 213, 111, 1),
            onPressed: () {},
          ),
        ]),
        SizedBox(
          height: 10,
        ),
        TabBar(
          tabs: const <Widget>[
            Tab(
              text: "Seeds ",
            ),
            Tab(
              text: "Fertilizer ",
            ),
            Tab(
              text: "Herbicides ",
            ),
            Tab(
              text: "Pesticides ",
            ),
            Tab(
              text: "Vetenary",
            ),
            
          ],
          controller: _tabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          isScrollable: true,
          unselectedLabelColor: Color.fromRGBO(83, 166, 98, 1),
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // Creates border
              color: Color.fromRGBO(254, 213, 111, 1)),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Image.asset(
                      'images/logo.png',
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Product Name"),
                        Row(
                          children: [Text("Ksh:"), Text("9000")],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Buy Know"),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(83, 166, 98, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.favorite),
                          color: Color.fromRGBO(83, 166, 98, 1),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.share),
                          color: Color.fromRGBO(83, 166, 98, 1),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_shopping_cart),
                          color: Color.fromRGBO(83, 166, 98, 1),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              )),
        )
      ]),
    ));
  }
}
