// import 'package:flutter/widgets.dart'; Low level without any design
import 'package:flutter/material.dart'; //Android design scheme
// import 'package:flutter/cupertino.dart'; IOS design scheme

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curator"),
      ),
    );
  }
}
