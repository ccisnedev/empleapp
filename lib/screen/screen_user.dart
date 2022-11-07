import 'package:flutter/material.dart';

class ScreenUser extends StatelessWidget {
const ScreenUser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('empleapp'),),
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
      child: Text('USER'),
    );
  }
}

