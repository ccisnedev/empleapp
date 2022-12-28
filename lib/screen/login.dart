import 'package:empleapp/api/api.dart';
import 'package:empleapp/screen/user.dart';
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

  Future? _post;
  Api api = Api();


  @override
  void initState() {
    
    _post = api.currentVersion();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeigth = MediaQuery.of(context).size.height;
    debugPrint('\nDEBUG Build loginScreen: $screenWidth x $screenHeigth');
    debugPrint('\nDEBUG Build Api: ');

    return Container(
      // width: screenWidth * 1.0,
      // height: screenHeigth * 1.0,

      color: Colors.white,

      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ################################
            // AVATAR
            Hero(
            tag: 'avatar', 
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: MediaQuery.of(context).size.width * .25,

              child: Image.asset('assets/avatar.png'),
            )
            ),

            SizedBox(height: 48.0),

            Text(
              'Hola,',
              style: TextStyle(decoration: TextDecoration.none, color: Colors.deepPurple, fontSize: 20, fontFamily: "Roboto"), textAlign: TextAlign.center,
              ),

            SizedBox(height: 8.0),

            // ################################
            // ID
            TextFormField(
              keyboardType: TextInputType.number,
              autofocus: false,
              initialValue: '',
              decoration: InputDecoration(
                label: const Text('DNI/CE'),
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
                label: const Text('PIN'),
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
              onPressed: (){
                debugPrint('\nDEBUG: ¿Olvidastee tu PIN?');
              } ,
              child: const Text('¿Olvidaste tu PIN?')
            ),
          ],
        ),
      ),    
    );
  }

}