import 'package:flutter/material.dart';

void main() => runApp(MyFuckinApp());

class MyFuckinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(title: Text('Obi-Wan', style: TextStyle(
          fontFamily: 'ComicS'
        ),),
        centerTitle: true,
        ),
        body: Center(
          child: Text('Hello there', style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'ComicS'
          )),
        ),
        floatingActionButton: FloatingActionButton(
            child: Text('Kenobi', style: TextStyle( color: Colors.white)),
            backgroundColor: Colors.deepOrange,
          onPressed: () { print('General Kenobi'); },
        ),
    ));
  }

}
