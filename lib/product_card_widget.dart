import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key key,
    @required this.title,
    @required TextEditingController titleController,
  }) : _titleController = titleController, super(key: key);

  final String title;
  final TextEditingController _titleController;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
                children: <Widget>[
    Image.asset("assets/omar-Sneakers.jpg"),
    SizedBox(
      height: 20,
    ),
    Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    ),
    SizedBox(
      height: 20,
    ),
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _titleController,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Product name",
            labelText: "Name"),
      ),
    )
                ],
    ));
  }
}