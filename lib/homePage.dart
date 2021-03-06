import 'package:flutter/material.dart';
import 'auth.dart';
import 'loginPage.dart';

class homePage extends StatefulWidget {
  @override
  homePageState createState() => homePageState();
}

class homePageState extends State<homePage> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auto-Login')),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('Home Page'),
              RaisedButton(
                onPressed: () {
                  _auth.signOut();
                  _auth.logOut();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => loginPage()));
                },
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
