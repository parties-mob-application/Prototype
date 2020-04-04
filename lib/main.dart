import 'package:flutter/material.dart';

void main() => runApp(Home());


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[200],
        body: SafeArea(
          child: HomePage()
        ),
      )
    );
  }

}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.red[200],
          height: 100.0,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Image(
                image: AssetImage('images/parties-logo.png'),
                color: Colors.red[400],
                height: 50.0,
                width: 50.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Parties',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.red[400],
                    fontSize: 50.0
                ),
              )
            ],
          ),
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
    );
  }
}

