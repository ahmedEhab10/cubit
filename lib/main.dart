import 'package:cubit1/presentation/Screens/character_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {CharacterScreen.id: (context) => CharacterScreen()},
      initialRoute: CharacterScreen.id,
    );
  }
}
