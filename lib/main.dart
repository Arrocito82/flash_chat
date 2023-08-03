import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      initialRoute: 'login_screen',
      routes: {
        'chat_screen': (context) => ChatScreen(),
        'login_screen': (context) => LoginScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'welcome_screen': (context) => WelcomeScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
