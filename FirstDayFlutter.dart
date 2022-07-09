import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: UserPanel()   // Scaffold derived from material components
));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int count = 0; // var

  Widget build(BuildContext context) {
    return Scaffold(        // Set of widgets
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {} , icon: new Icon(Icons.menu)),
        title: Text('BOOM BEACH'),
        centerTitle: true,
        backgroundColor: Colors.black45,
        actions: [
          IconButton(onPressed: () {} , icon: new Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {} , icon: new Icon(Icons.monetization_on))

        ],
      ),
      body: SafeArea(     // A widget that insets its child by sufficient padding to avoid intrusions by the operating system.
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,    // center the interface
              children: [
                Column(
                    children: [
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(5.0, 15.0, 25.0, 55.0)
                      // ),
                      // SizedBox(
                      //   height: 76),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      CircleAvatar(
                        backgroundImage: AssetImage('ass/batman.jpg'),
                        radius: 50,),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('Danny Phantom', style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Arial'
                      )),
                      Row(
                        children: [
                          Icon(Icons.mail_outline, size: 24),
                          Text('azat@mail.ru')
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Pressed times: $count ')
                    ])])
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.adb),
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            setState(() {
              count++;
            });
          }
      ),
    );
  }
}


