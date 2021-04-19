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
      body: Center(
        child: Container(
        width: 120,
        height: 120,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Colors.pink[300],
            Colors.red[600]
          ]),
          boxShadow: [BoxShadow(
            color: Colors.grey[350],
            blurRadius:10,
          )]
        ),
        child: Text("Enter the Gates of the Lord",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white70,
            fontWeight: FontWeight.bold 
          ),
        ),
      ),
      )
      
    );
  }
}
