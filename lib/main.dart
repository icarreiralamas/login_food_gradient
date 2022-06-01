import 'package:flutter/material.dart';
import 'package:login_2/src/screens/login_screen.dart';
import 'package:login_2/src/screens/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (_) => LoginScreen(),
          'register': (_) => RegisterScreen()
        },
        theme: ThemeData().copyWith(
          hintColor: Colors.white,
          inputDecorationTheme: const InputDecorationTheme(
              //Estilo cuando el foco está sobre el campo
             focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.white, width: 5)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: 200)),
            //Para cambiar el color d
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.white)),    
            labelStyle: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ));
  }
}
