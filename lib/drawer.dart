import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      ));
  }
}