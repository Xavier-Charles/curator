// import 'package:flutter/widgets.dart'; Low level without any design
// import 'package:flutter/cupertino.dart'; IOS design scheme

import 'package:curator_app/pages/home_page.dart';
import 'package:curator_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage()
      },
    );
  }
}
