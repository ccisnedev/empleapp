// import 'package:empleapp/screen/screen_client.dart';
import 'package:empleapp/screen/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

String version = '0.7.0';

void main() {
  debugPrint('main()');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'empleApp',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeigth = MediaQuery.of(context).size.height;
    
    debugPrint('Screensize = $screenWidth x $screenHeigth');

    // Leer versión actual de la aplicación

    // verificar descarga
    return Container(
      width: screenWidth * 1.0,
      height: screenHeigth * 1.0,
      color: Colors.white,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // Desarrollado por emplea
          Container(
            width: screenWidth * .498,
            height: screenWidth * .197,
            color: Colors.transparent,
            child: Image.asset('assets/logodev.png'), // Size 498 x 197
          ),

          // LOGO Animado
          Container(
            width: screenHeigth * .5,
            height: screenHeigth * .5,
            color: Colors.transparent,
            child: const RiveAnimation.asset('assets/logo.riv'),
          ),
          
          // Bienvenido
          Container(
            width: screenWidth * 1.0,
            height: screenHeigth * .05,
            color: Colors.transparent,
            child: const Text('Bienvenido,', style: TextStyle(decoration: TextDecoration.none, color: Colors.deepPurple, fontSize: 24, fontFamily: "Roboto"), textAlign: TextAlign.center,),
          ),

          // Botones
          Container(
            width: screenWidth * 1.0,
            height: screenHeigth * .1,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(onPressed: onPressedClient, child: SizedBox(width: screenWidth * .2, child: const Text('Cliente      ', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)))),
                ElevatedButton(onPressed: onPressedWorker, child: SizedBox(width: screenWidth * .2, child: const Text('Trabajador   ', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)))),
                ElevatedButton(onPressed: onPressedAdmin, child: SizedBox(width: screenWidth * .2, child: const Text('Administrador', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)))),
              ]),
          ),

          // Disclaimer
          Container(
            width: screenWidth * 1.0,
            height: screenHeigth * .1,
            color: Colors.transparent,
            child: const Center(
              child: Text(
                'Al ingresar aceptas nuestras Condiciones de uso y Politica de privacidad,',
                style: TextStyle(decoration: TextDecoration.none, color: Colors.deepPurple, fontSize: 10, fontFamily: "Roboto"), textAlign: TextAlign.center,)),
          ),

          // Version
          Container(
            width: screenWidth * 1.0,
            height: screenHeigth * .05,
            color: Colors.transparent,
            child: Text(
              'empleApp v$version',
              style: TextStyle(decoration: TextDecoration.none, color: Colors.grey, fontSize: 10, fontFamily: "Roboto"), textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }

  void onPressedClient() {
    debugPrint('Boton presionado: onPressedClient');
    // Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenClient()));
  }

  void onPressedWorker() {
    debugPrint('Boton presionado: onPressedWorker');
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenLogin()));
  }

  void onPressedAdmin() {
    debugPrint('Boton presionado: onPressedAdmin');
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenLogin()));
  }
}