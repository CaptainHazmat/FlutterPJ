import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Mystate();
  }
}

class _Mystate extends State<MyApp> {
  bool _loading = false;
  double _lvalue = 0.0;

  @override
  void initState() {
    _loading = false;
    _lvalue = 0.0;
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: _loading
            ? Column(
                // if loading is true
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                  ),
                  Text('${(_lvalue * 100).round()}%'),
                  LinearProgressIndicator(
                    value: _lvalue,
                  )
                ],
              )
            : Text('Press the Button'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // calls build method
            _loading = !_loading;
            _updateProgress();
          });
        },
        child: Icon(Icons.add_box),
      ),
    ));
  }
  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _lvalue += 0.2;

        if (_lvalue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _lvalue = 0.0;
          return;
        }
      });
    });

  }
}
