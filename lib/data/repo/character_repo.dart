import 'package:cubit1/data/Models/characters_model.dart';
import 'package:cubit1/data/Services/characterservice.dart';

class CharacterRepo {
  Characterservice characterservice;
  CharacterRepo(this.characterservice);

  Future<List<Character>> GetAllChratater() async {
    final charaters = await characterservice.GetAllChratater();
    return charaters.map((character) => Character.fromJson(character)).toList();
  }
}
