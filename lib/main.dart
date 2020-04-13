import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xFFEB4559),
          accentColor: Color(0xFFAEEFEC),
          scaffoldBackgroundColor: Color(0xFFF78259),
        ),
        home: Scaffold(
      body: SafeArea(child: HomePage()),
    ));
  }
}

