import 'package:cubit1/bloc/cubit/character_cubit_cubit.dart';
import 'package:cubit1/data/Models/characters_model.dart';
import 'package:cubit1/presentation/Widgets/characteritem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});
  static String id = 'Character screen';

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  List<Character>? AllCharacter;
  @override
  void initState() {
    super.initState();
    AllCharacter =
        BlocProvider.of<CharacterCubitCubit>(context).GetAllChratater();
  }

  Widget buildblocwidget() {
    return BlocBuilder<CharacterCubitCubit, CharacterCubitState>(
      builder: (context, state) {
        if (state is CharacterCubitloaded) {
          AllCharacter = (state).characters;
          return buildloadedlistwidget();
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.yellow,
            ),
          );
        }
      },
    );
  }

  Widget buildloadedlistwidget() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [buildcharacterlist()],
        ),
      ),
    );
  }

  Widget buildcharacterlist() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: AllCharacter!.length,
        itemBuilder: (contex, index) {
          return Characteritem(character: AllCharacter![index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Characters',
          style: TextStyle(color: Colors.grey, fontSize: 25),
        ),
      ),
      body: buildblocwidget(),
    );
  }
}
