import 'package:flutter/material.dart';

import 'package:empleapp/api/api.dart';
import 'package:empleapp/screen/login.dart';

import 'package:rive/rive.dart';

String currentVersion = '0.6.3';
String message = '';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Api api = Api();
  Future? _post;
  List? list;

  bool needUpdate = false;

  @override
  void initState() {
    // TO DO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeigth = MediaQuery.of(context).size.height;
    
    debugPrint('\nDEBUG Screensize = $screenWidth x $screenHeigth');
    _post = api.currentVersion();

    // needUpdate = checkForUpdate();

    // if (needUpdate){

    // } else {

    // }

    return Container(
      width: screenWidth * 1.0, // Solo tiene sentido cuando la orientacion es Portrait
      height: screenHeigth * 1.0,
      color: Colors.white,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // logo: 'Desarrollado por emplea'
          Container(
            width: screenHeigth * .5 * .336,
            height: screenHeigth * .5 * .138,
            color: Colors.transparent,
            child: Image.asset('assets/logodev.png'), // Size 498 x 197
          ),

          // LOGO Animado
          Container(
            width: screenHeigth * .4,
            height: screenHeigth * .4,
            alignment: Alignment.center,
            color: Colors.transparent,
            child: const RiveAnimation.asset('assets/logo.riv'),
          ),

          // Texto y Botones
          Container(
            width: screenWidth * 1.0,
            height: screenHeigth * .2,
            alignment: Alignment.center,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Somos #RRHHLovers \n$message', style: const TextStyle(decoration: TextDecoration.none, color: Colors.deepPurple, fontSize: 24, fontFamily: "Roboto"), textAlign: TextAlign.center,),
                !needUpdate
                ?Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(onPressed: onPressedClient, child: SizedBox(width: screenWidth * .2, child: const Text('Cliente      ', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)))),
                    ElevatedButton(onPressed: onPressedWorker, child: SizedBox(width: screenWidth * .2, child: const Text('Trabajador   ', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)))),
                    ElevatedButton(onPressed: onPressedAdmin, child: SizedBox(width: screenWidth * .2, child: const Text('Administrador', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)))),
                  ]
                )
                :ElevatedButton(onPressed: onPressedUpdate, child: SizedBox(width: screenWidth * .4, child: const Text('Actualizar', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)))),
              ],
            ),
          ),

          // Disclaimer
          Container(
            width: screenWidth * 1.0,
            height: screenHeigth * .05,
            alignment: Alignment.center,
            color: Colors.transparent,
            child: const Center(
              child: Text(
                'Al ingresar aceptas nuestras Condiciones de uso y Politica de privacidad,',
                style: TextStyle(decoration: TextDecoration.none, color: Colors.deepPurple, fontSize: 10, fontFamily: "Roboto"), textAlign: TextAlign.center,
                )
              ),
          ),

          // Version
          Container(
            width: screenWidth * 1.0,
            height: screenHeigth * .05,
            color: Colors.transparent,
            
            child: FutureBuilder(                                                                                                           
              future: _post, 
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
                debugPrint('\nDEBUG verion Error: ${snapshot.hasError}');

                if(!snapshot.hasError && snapshot.hasData){
                  final lastestVersion = snapshot.data['fields']['current'];

                  if(lastestVersion == currentVersion){
                    debugPrint('\nDEBUG No hay actualizaciones disponibles');
                  }else{
                    debugPrint('\nDEBUG Es necesario actualizar');
                    
                    needUpdate = true;
                    message = 'Hay una nueva versión disponible.';

                  }

                  return Center(child: Text('empleApp v$lastestVersion', style: const TextStyle(decoration: TextDecoration.none, color: Colors.grey, fontSize: 10, fontFamily: "Roboto"), textAlign: TextAlign.center,),);
                }else{
                  return const Text('[°_°]', style: TextStyle(decoration: TextDecoration.none, color: Colors.grey, fontSize: 10, fontFamily: "Roboto"), textAlign: TextAlign.center,);
                } 
              },
            ),
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

  void onPressedUpdate() {
    debugPrint('Boton presionado: onPressedUpdate');
  }
}