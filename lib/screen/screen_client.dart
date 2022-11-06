import 'package:flutter/material.dart';

class ScreenClient extends StatelessWidget {
const ScreenClient({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Clientes'),
      ),
    );
  }
}