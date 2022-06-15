import 'package:flutter/material.dart';
import 'package:seed/authentication/farmer_registration.dart';

class LandRegistration extends StatelessWidget {
  const LandRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
            child: Column(children: <Widget>[
          // SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'images/logo.png',
              height: 150,
              width: 150,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
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
                      labelText: 'Country',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(83, 166, 98, 1),
                      ),
                      hintText: 'Country'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
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
                      labelText: 'County',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(83, 166, 98, 1),
                      ),
                      hintText: 'County'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
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
                      labelText: 'Sub County',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(83, 166, 98, 1),
                      ),
                      hintText: 'Sub County'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
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
                      labelText: 'Village/Estate',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(83, 166, 98, 1),
                      ),
                      hintText: 'Village/Estate'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
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
                      labelText: 'Land Size in Acres',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(83, 166, 98, 1),
                      ),
                      hintText: 'Land Size in acres'),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      child: Text("Register"),
                      onPressed: () => print("it's pressed"),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(252, 213, 111, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
              ]))
        ])));
  }
}
