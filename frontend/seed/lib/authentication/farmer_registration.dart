import 'package:flutter/material.dart';
import 'package:seed/authentication/land_registration.dart';
import 'package:seed/authentication/login.dart';

class FarmerRegistration extends StatelessWidget {
  const FarmerRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: <Widget>[
      SizedBox(height: 20),
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
                  labelText: 'First Name',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(83, 166, 98, 1),
                  ),
                  hintText: 'First Name'),
            ),
            SizedBox(
              height: 15,
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
                  labelText: 'Last Name',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(83, 166, 98, 1),
                  ),
                  hintText: 'Last Name'),
            ),
            SizedBox(
              height: 15,
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
                  labelText: 'Other Name',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(83, 166, 98, 1),
                  ),
                  hintText: 'Other Name'),
            ),
            SizedBox(
              height: 15,
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
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(83, 166, 98, 1),
                  ),
                  hintText: 'Phone Number'),
            ),
            SizedBox(
              height: 15,
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
                  labelText: 'Date of Birth',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(83, 166, 98, 1),
                  ),
                  hintText: 'Date of Birth'),
            ),
            SizedBox(
              height: 15,
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
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(83, 166, 98, 1),
                  ),
                  hintText: '4 digit Password'),
            ),
            SizedBox(
              height: 15,
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
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(83, 166, 98, 1),
                  ),
                  hintText: 'Confirm 4 digit Password'),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton.icon(
                  label: Text("Next"),
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LandRegistration()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(252, 213, 111, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  "Already have an account?Login here",
                  style: TextStyle(color: Colors.black),
                )),
          ]))
    ])));
  }
}
