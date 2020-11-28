import 'package:flutter/material.dart';
// import 'dart:async' show Future;
// import 'package:flutter/services.dart' show rootBundle;

// Future<String> loadAsset() async {
//   return await rootBundle.loadString('assets/config.json');
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile Public',
      debugShowCheckedModeBanner: false, //untuk menghilangkan debug di Add Bar
      home: Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.blue,
            leading: new Icon(Icons.chevron_left),
            title: new Center(
              child: new Text("My Public Profile"),
            ),
            actions: <Widget>[new Icon(Icons.more_horiz)],
          ),
          // appBar: AppBar(
          //   backgroundColor: Colors.blue,
          //   leading: Icon(Icons.chevron_left),
          //   title: Text('My Public Profile'),
          //   actions: <Widget>[
          //     IconButton(
          //       icon: Icon(
          //         Icons.more_horiz,
          //       ),
          //     ),
          //   ],
          // ),
          body: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("images/Fei.png"),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 35,
                child: new Image.asset("images/medal2.png"),
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.person, size: 40.0),
                    title: Text(
                      "Name",
                      style: TextStyle(fontSize: 14.0),
                    ),
                    subtitle: Text(
                      'Muhammad Syafei',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.message, size: 40.0),
                  title: Text(
                    "Tagline",
                    style: TextStyle(fontSize: 14.0),
                  ),
                  subtitle: Text(
                    'Jikalau bukan karena Ilmu niscaya manusia seperti binatang.',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
