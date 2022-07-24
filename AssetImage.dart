import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mystate();
  }
}

class mystate extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(fontFamily: 'ComicS'),         // to set font for whole app
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text(
            'Hello',
          ),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand, // to fit images
            children: <Widget>[
              Image(
                image: AssetImage('ass/015 bg.jpg'),
              ),
              Image.asset('ass/015 icon.png'),
              Positioned(
                  // to position at center
                  top: 16,
                  left: 125,
                  child: Text('Hey there',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          //fontFamily: 'ComicS'
                        ))),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
          },
          child: Icon(Icons.accessibility),
        ),
      ),
    );
  }
}
