import 'package:empleapp/screen/screen_user.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({ Key? key}) : super(key: key);

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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeigth = MediaQuery.of(context).size.height;
    debugPrint('\nDEBUG Build loginScreen: $screenWidth x $screenHeigth');

    return Container(
      // width: screenWidth * 1.0,
      // height: screenHeigth * 1.0,

      color: Colors.white,

      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        // ################################
        // AVATAR
          Hero(
          tag: 'avatar', 
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 50,

            child: Image.asset('assets/avatar.png'),
          )
          ),

        SizedBox(height: 48.0),

        Text('Bienvenido,'),

        SizedBox(height: 8.0),

        // ################################
        // ID
        TextFormField(
          
          keyboardType: TextInputType.number,
          autofocus: false,
          initialValue: '',
          decoration: InputDecoration(
            hintText: 'DNI/CE',
            contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),

        SizedBox(height: 8.0),

        // ################################
        // PIN
        TextFormField(
          keyboardType: TextInputType.number,
          autofocus: false,
          obscureText: true,
          initialValue: '',
          decoration: InputDecoration(
            hintText: 'PIN',
            contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),

        SizedBox(height: 24.0),

        // ################################
        // LOGIN BUTTON
        ElevatedButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenUser())),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: const Text('Insgresar', textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
          )
        ),

        // ################################
        // FORGOT LABEL
        TextButton(
          onPressed: (){} ,
          child: const Text('¿Olvidaste tu PIN?')
        ),
      ],
      ),    
    );
  }

}