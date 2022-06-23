import 'package:flutter/material.dart';
import 'farmer_registration.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                    SizedBox(
                      height: 120,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(83, 166, 98, 1),
                                width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(83, 166, 98, 1),
                                width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          labelText: 'Email/Phone Number',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(83, 166, 98, 1),
                          ),
                          hintText: 'Email/Phone Number'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(83, 166, 98, 1),
                                width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(83, 166, 98, 1),
                                width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(83, 166, 98, 1),
                          ),
                          hintText: 'Password'),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(254, 213, 111, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    // Text(
                    //   "Forgot Password?",
                    //   style: TextStyle(color: Colors.grey),
                    // ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FarmerRegistration()),
                          );
                        },
                        child: Text(
                          "Dont have an account?Register here",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
