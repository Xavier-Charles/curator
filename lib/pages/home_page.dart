import 'package:flutter/material.dart';
import 'package:curator_app/drawer.dart';

import '../product_card_widget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var title = "Change My Name";
  TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curator"),
      ),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                  child: ProductCardWidget(title: title, titleController: _titleController)
              ))),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          title = _titleController.text,
          setState(() => {})
        },
        child: Icon(Icons.send),
      ),
    );
  }
}