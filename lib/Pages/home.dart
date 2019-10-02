import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
        theme: new ThemeData(
            primarySwatch: Colors.indigo),
        home: new HomePage()

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("FIDI"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 00,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Stephanie Alejandra Gonzalez"),
              accountEmail: new Text("Stgonzalez7@poligran.edu.co"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black12,
                child: new Text("SG"),
              ),
            ),
            new ListTile(
              title: new Text("Ciencias Básicas"),
              trailing: new Icon(Icons.arrow_forward_ios),
            ),
            new ListTile(
              title: new Text("Diseño"),
              trailing: new Icon(Icons.arrow_forward_ios),
            ),
            new ListTile(
              title: new Text("Escuela Tres"),
              trailing: new Icon(Icons.arrow_forward_ios),
            ),

            new Divider(),
            new ListTile(
              title: new Text("Mi Equipo"),
              trailing: new Icon(Icons.account_balance),

            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("BIENVENIDOS A LA APLICACIÓN FIDI"),
        ),
      ),
    );
  }
}