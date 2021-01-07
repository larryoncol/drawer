import 'package:drawer/NewPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.lime,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] :null),
      home: new HomePage(),
    );
  }
}
/*
class MyDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.lime,
      primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] :null),
      home: new HomePage(),
    );
  }
}

*/

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 :0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Lawrence"),
              accountEmail: new Text("lawrence@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.green : Colors.white,
                child: new Text('L')
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.green : Colors.white,
                  child: new Text("L"),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Page One"),
              trailing: new Icon (Icons.arrow_upward),
              onTap: (){ //https://flutter.dev/docs/cookbook/navigation/navigation-basics
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute
                  (builder: (BuildContext context) =>
                    new NewPage("Page One")));
              },
            ),
            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon (Icons.arrow_downward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute
                  (builder: (BuildContext context) =>
                new NewPage(" Page Two")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon (Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              } ,
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child:new Text ("Home Page"),
        ),
      ),
    );
  }
}



