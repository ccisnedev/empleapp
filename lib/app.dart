import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen/homepage.dart';

class App extends StatelessWidget with PortraitModeMixin{
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'empleApp',
      theme: ThemeData(primarySwatch: Colors.deepPurple,),
      home: const MyHomePage(),
      );
  }
}

mixin PortraitModeMixin on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return Container();
  }
}

/// blocks rotation; sets orientation to: portrait
void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}