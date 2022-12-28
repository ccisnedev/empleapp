import 'package:flutter/material.dart';

class ScreenUser extends StatelessWidget {
const ScreenUser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('emplApp'),
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: (){},
        //   ),

        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.access_time_filled),
        //     onPressed: () {},
        //   ),

        //   IconButton(
        //     icon: Icon(Icons.share ),
        //     onPressed: () {},
        //   ),

        //   IconButton(
        //     icon: Icon(Icons.keyboard_command_key ),
        //     onPressed: () {},
        //   ),
        // ],
        ),
      // drawer: Drawer(),
      body: const ScreenUserStatefulWidget(),

    );
  }
}

class ScreenUserStatefulWidget extends StatefulWidget {
  const ScreenUserStatefulWidget({ Key? key }) : super(key: key);

  @override
  _ScreenUserState createState() => _ScreenUserState();
}

class _ScreenUserState extends State<ScreenUserStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'USER',
        style: TextStyle(decoration: TextDecoration.none, color: Colors.deepPurple, fontSize: 10, fontFamily: "Roboto"), textAlign: TextAlign.center,
        ),
    );
  }
}

