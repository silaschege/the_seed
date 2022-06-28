import 'package:flutter/material.dart';

class AddPlantPage extends StatefulWidget {
  AddPlantPage({Key? key}) : super(key: key);

  @override
  State<AddPlantPage> createState() => _AddPlantPageState();
}

class _AddPlantPageState extends State<AddPlantPage> {
  final List<String> _listItem = [
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
    'images/logo.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(83, 166, 98, 1)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 60),
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
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
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
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                          child: GridView.count(
                                        crossAxisCount: 2,
                                        padding: EdgeInsets.all(5),
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5,
                                        children: _listItem
                                            .map((item) => Card(
                                                  color: Colors.transparent,
                                                  elevation: 0,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                item),
                                                            fit: BoxFit.cover)),
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
