// import 'package:flutter/widgets.dart'; Low level without any design
import 'package:flutter/material.dart'; //Android design scheme
// import 'package:flutter/cupertino.dart'; IOS design scheme

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

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
                  child: Card(
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
              ))))),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          // DrawerHeader(
          //   child: Text("Hi"),
          //   decoration: BoxDecoration(color: Colors.amber[300]),
          //   ),
          UserAccountsDrawerHeader(
            accountName: Text("Xharles Dev"),
            accountEmail: Text("Hello@Xharles.dev"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Xharles Dev"),
            subtitle: Text("Flutter is on fire"),
            trailing: Icon(Icons.edit),
            onTap: () => {},
          ),
          ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("Hello@Xharles.dev"),
              trailing: Icon(Icons.edit)),
        ],
      )),
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
