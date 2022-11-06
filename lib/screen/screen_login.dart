import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
const ScreenLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Log In')),
      body: const ScreenLoginStatefulWidget(),
      
    );
  }
}

class ScreenLoginStatefulWidget extends StatefulWidget {
  const ScreenLoginStatefulWidget({ Key? key }) : super(key: key);

  @override
  _ScreenLoginState createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLoginStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}