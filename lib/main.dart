// import 'package:flutter/widgets.dart'; Low level without any design
// import 'package:flutter/cupertino.dart'; IOS design scheme

import 'package:curator_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.green),
  );
  }
}


