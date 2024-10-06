import 'package:bloc/bloc.dart';
import 'package:cubit1/data/Models/characters_model.dart';
import 'package:cubit1/data/repo/character_repo.dart';
import 'package:meta/meta.dart';

part 'character_cubit_state.dart';

class CharacterCubitCubit extends Cubit<CharacterCubitState> {
  CharacterRepo characterRepo;
  List<Character> characters = [];
  CharacterCubitCubit(this.characterRepo) : super(CharacterCubitInitial());
  List<Character> GetAllChratater() {
    characterRepo.GetAllChratater().then((characters) {
      emit(CharacterCubitloaded(characters: characters));
      this.characters = characters;
    });
    return characters;
  }
}
