import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_integration/Shared/controllerLogin.dart';
import 'package:social_media_integration/modules/login/loginScreen.dart';


void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => ControllerLogin()),
        )
      ],
      child: MaterialApp(
        title: 'Google Sign In',
        theme: ThemeData(

          primarySwatch: Colors.amber,
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      ),
    );
  }
}
