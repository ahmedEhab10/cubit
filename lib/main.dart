import 'package:cubit1/bloc/cubit/character_cubit_cubit.dart';
import 'package:cubit1/data/Services/characterservice.dart';
import 'package:cubit1/data/repo/character_repo.dart';
import 'package:cubit1/presentation/Screens/character_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  CharacterRepo characterRepo = CharacterRepo(Characterservice());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterCubitCubit(characterRepo),
      child: MaterialApp(
        routes: {CharacterScreen.id: (context) => CharacterScreen()},
        initialRoute: CharacterScreen.id,
      ),
    );
  }
}
