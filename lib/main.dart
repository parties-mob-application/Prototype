import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.green[200],
      body: SafeArea(child: HomePage()),
    ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dashBoardTracker = 0;

  // todo: add people tracker
  // todo: needs moving to own people class
  List<String> people = [];

  // todo: needs moving to own dashboard class
  List<String> dashBoardTitle = [
    'Make your Party!',
    'Your Profile',
    'Find Parties',
    'Settings',
  ];
  // todo: needs moving to own dashboard class
  // todo: add animations
  // todo: add page navigations
  // todo: add QR code functionality
  List<Widget> dashBoard = [
    Icon(Icons.people, size: 100.0, color: Colors.red[400]),
    Icon(Icons.account_circle, size: 100.0, color: Colors.red[400]),
    Icon(Icons.map, size: 100.0, color: Colors.red[400]),
    Icon(Icons.settings, size: 100.0, color: Colors.red[400]),
  ];

  void arrowNavigation() {
    setState(() {
      if (dashBoardTracker == dashBoard.length - 1) {
        print('Reached limit');
        dashBoardTracker = 0;
      } else {
        dashBoardTracker++;
      }
    });
  }

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
                    fontSize: 50.0),
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
          child: Row(
            children: <Widget>[
              Expanded(
                // todo: can possibly be change to IconButton?
                // todo: add swipe functionality
                child: FlatButton(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red[400],
                  ),
                  onPressed: () {
                    print('left buttn pressed');
                    arrowNavigation();
                  },
                ),
              ),
              Container(
                width: 200.0,
                child: Column(
                  children: <Widget>[
                    Text(
                      dashBoardTitle[dashBoardTracker],
                      style: TextStyle(color: Colors.red[400], fontSize: 25.0, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(height: 20.0),
                    dashBoard[dashBoardTracker]
                  ],
                ),
              ),
              Expanded(
                // can possibly be change to IconButton?
                child: FlatButton(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red[400],
                  ),
                  onPressed: () {
                    print("right button pressed");
                    arrowNavigation();
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red[200],
          height: 200.0,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Column(
            children: <Widget>[
              // todo: create listview UI
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  FlatButton(
                      child: Text('Your Party'),
                      onPressed: () {
                        print('go to contacts listview');
                      }),
                  FlatButton(
                      child: Text('Parties you\'re in'),
                      onPressed: () {
                        print('go to parties listview');
                      }),
               Row(
                    //
                  ),
                ],
              ),
            ],
          ),
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
