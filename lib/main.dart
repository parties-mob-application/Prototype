import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text ('Parties',
          style: TextStyle (
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
        )
    );

    Widget dashboardSection = Container(
        padding: const EdgeInsets.all(64),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff000000),
            width: 4
          )
        ),
        child: Text ('Dashboard',
          style: TextStyle (
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        )
    );

    Widget partiesSection = Container(
        padding: const EdgeInsets.all(64),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff000000),
            width: 4
          )
        ),
        child: Text ('People',
          style: TextStyle (
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        )
    );

    Widget adSpaceSection = Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff000000),
            width: 4
          )
        ),
        child: Text ('ad space',
          style: TextStyle (
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        )
    );

    return MaterialApp(
      title: 'Parties Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Parties demo'),
        ),
        body: Column(
          children: [
            titleSection,
            dashboardSection,
            partiesSection,
            adSpaceSection
          ],

        ),
      ),
    );
  }
}
