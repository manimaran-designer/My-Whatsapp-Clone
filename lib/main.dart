import 'package:flutter/material.dart';
import 'package:my_whatsapp_clone/screens/callScreen.dart';
import 'package:my_whatsapp_clone/screens/cameraScreen.dart';
import 'package:my_whatsapp_clone/screens/chatScreen.dart';
import 'package:my_whatsapp_clone/screens/home.dart';
import 'package:my_whatsapp_clone/auth/loginScreen.dart';
import 'package:my_whatsapp_clone/auth/registerScreen.dart';
import 'package:my_whatsapp_clone/screens/statusScreen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0XFF075e54),
        accentColor: Color(0XFF25d366),
      ),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        HomePage.id: (context) => HomePage(),
        ChatScreen.id: (context) => ChatScreen(),
        StatusScreen.id: (context) => StatusScreen(),
        CallScreen.id: (context) => CallScreen(),
        CameraScreen.id: (context) => CameraScreen(),
      },
    );
  }
}
