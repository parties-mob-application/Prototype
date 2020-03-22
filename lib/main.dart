import 'package:flutter/material.dart';

void main() => runApp(Home());


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[200],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.red[200],
                height: 100.0,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.red[200],
                height: 200.00,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.red[200],
                height: 200.0,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.red[200],
                height: 50.0,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              )
            ],
          ),
        ),
      )
    );
  }
}
