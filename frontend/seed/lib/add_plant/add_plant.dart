import 'package:flutter/material.dart';

class AddPlantPage extends StatefulWidget {
  AddPlantPage({Key? key}) : super(key: key);

  @override
  State<AddPlantPage> createState() => _AddPlantPageState();
}

class _AddPlantPageState extends State<AddPlantPage> {
  final List<String> _listItem = [
    'maize',
    'rice',
    'beans',
    'wheat',
    'sorghum',
    'millet',
    'oats',
    'potatoes',
    'onions',
    'tomato',
    'parsely',
    'ginger',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(83, 166, 98, 1)),
          child: Column(
            children: <Widget>[
              // SizedBox(height: 60),
              Image.asset(
                'images/logo.png',
                height: 200,
                width: 200,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50))),
                              child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                          child: GridView.count(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        children: _listItem
                                            .map((item) => Card(
                                                  color: Colors.white,
                                                  elevation: 2,
                                                  child: Container(
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //         BorderRadius
                                                    //             .circular(30),
                                                    //     image: DecorationImage(
                                                    //         image: AssetImage(
                                                    //             item),
                                                    //         fit: BoxFit.cover)),
                                                    child: Column(children: [
                                                      Text(item),
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Text('Add',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                )), // <-- Text
                                                          ],
                                                        ),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary:
                                                              Color.fromRGBO(
                                                                  254,
                                                                  213,
                                                                  111,
                                                                  1),
                                                        ),
                                                      ),
                                                    ]),
                                                    // child: Transform.translate(
                                                    //   offset: Offset(50, -50),
                                                    //   child: Container(
                                                    //     margin: EdgeInsets.symmetric(horizontal: 65, vertical: 63),
                                                    //     decoration: BoxDecoration(
                                                    //       borderRadius: BorderRadius.circular(10),
                                                    //       color: Colors.white
                                                    //     ),
                                                    //     child: Icon(Icons.bookmark_border, size: 15,),
                                                    //   ),
                                                    // ),
                                                  ),
                                                ))
                                            .toList(),
                                      ))
                                    ],
                                  ))))
                    ],
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}
