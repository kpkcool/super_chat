import 'package:flutter/material.dart';
import 'package:super_chat/screens/chat_screen.dart';
import 'package:super_chat/screens/login_screen.dart';
import 'package:super_chat/screens/registration_screen.dart';
import 'package:super_chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SuperChat());
}

class SuperChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //home: WelcomeScreen(),

      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id  : (context) => RegistrationScreen(),
        ChatScreen.id  : (context) => ChatScreen(),
      },


    );
  }
}


