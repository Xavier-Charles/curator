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
          color: Colors.teal[400],
          width: 100,
          height: 100,
        ),
      ),
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
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
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
              trailing: Icon(Icons.edit)
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.edit),
        ),
    );
  }
}
