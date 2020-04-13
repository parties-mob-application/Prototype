import 'package:flutter/material.dart';

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

  List<Widget> dashBoard = [
    Icon(Icons.people, size: 100.0, color: Color(0xFFF8EEEE)),
    Icon(Icons.account_circle, size: 100.0, color: Color(0xFFF8EEEE)),
    Icon(Icons.map, size: 100.0, color: Color(0xFFF8EEEE)),
    Icon(Icons.settings, size: 100.0, color: Color(0xFFF8EEEE)),
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

  final expandedContainer = Expanded(
    child: Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Color(0xFFEB4559), borderRadius: BorderRadius.circular(10.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Parties',
          style: TextStyle(
            fontFamily: 'Pacifico',
            color: Color(0xFFF8EEEE),
            fontSize: 40.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color(0xFFEB4559),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFFAEEFEC),
                      ),
                      onPressed: () {
                        print('left nav button');
                        arrowNavigation();
                        print(dashBoardTracker);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        // border: Border.all(width: 2.0, color: Color(0xFF4a47a3)),
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xffad62aa), Color(0xfff4b0c7)]),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            dashBoardTitle[dashBoardTracker],
                            style: TextStyle(
                              color: Color(0xFFF8EEEE),
                            ),
                          ),
                          SizedBox(height: 40.0),
                          dashBoard[dashBoardTracker]
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFAEEFEC),
                      ),
                      onPressed: () {
                        print('right nav button');
                        arrowNavigation();
                        print(dashBoardTracker);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color(0xFFEB4559),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
                          child: FlatButton(
                            color: Color(0xFFAEEFEC),
                            child: Text('Your party:',
                            style: TextStyle(
                                color: Color(0xFFEB4559)
                            )),
                            onPressed: () {
                              print('shows whos online');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
                          child: FlatButton(
                            color: Color(0xFFAEEFEC),
                            child: Text(
                              'Parties you\'re in',
                              style: TextStyle(
                                color: Color(0xFFEB4559)
                              ),
                               ),
                            onPressed: () {
                              print('show your parties');
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xffad62aa), Color(0xfff4b0c7)]
                          ),
                        ),
                      child: Column(
                        children: <Widget>[
                          // todo: needs moving to dynamic list
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Color(0xfff4b0c7),
                              backgroundImage: AssetImage('images/nerd_smoking.jpg'),
                            ),
                            title: Text('persons_name'),
                            trailing: Icon(
                              Icons.message
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                            width: double.infinity,
                            child: Divider(
                              color: Color(0xfff4b0c7),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Color(0xfff4b0c7),
                              backgroundImage: AssetImage('images/nerd_smoking.jpg'),
                            ),
                            title: Text('persons_name'),
                            trailing: Icon(
                              Icons.message
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                            width: double.infinity,
                            child: Divider(
                              color: Color(0xfff4b0c7),
                            ),
                          ),
                        ],
                      ),
                      ),

                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
