import 'package:flutter/material.dart';
import 'package:prueba_2/config/theme/app_theme.dart';
import 'package:prueba_2/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicacion',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      home: const ChatScreen()
    );
  }
}