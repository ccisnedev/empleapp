import 'screen_login.dart';
import 'package:flutter/material.dart';

class ScreenUser extends StatefulWidget {
  const ScreenUser({ Key? key }) : super(key: key);

  @override
  _ScreenUserState createState() => _ScreenUserState();
}

class _ScreenUserState extends State<ScreenUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('USER'),
    );
  }
}