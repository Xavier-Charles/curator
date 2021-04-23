// import 'package:flutter/widgets.dart'; Low level without any design
// import 'package:flutter/cupertino.dart'; IOS design scheme

import 'package:curator_app/pages/home_page.dart';
import 'package:curator_app/pages/login_page.dart';
import 'package:curator_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.get("loggedIn") == true ? HomePage(): LoginPage(),
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage()
      },
    );
  }
}
