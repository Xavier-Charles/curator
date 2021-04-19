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
      body: Container(
        color: Colors.teal[200],
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.max, doesn't
          children: <Widget>[
            Container(
              color: Colors.green[400],
              width: 90,
              height: 120,
              alignment: Alignment.topLeft,        
            ),
            Container(
              color: Colors.red[400],
              width: 90,
              height: 120,
              alignment: Alignment.topLeft,        
            ),
            Container(
              color: Colors.blue[400],
              width: 90,
              height: 120,
              alignment: Alignment.topLeft,        
            ),
          ],
        )
      )
      
    );
  }
}
