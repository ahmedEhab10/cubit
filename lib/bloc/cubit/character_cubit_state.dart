part of 'character_cubit_cubit.dart';

@immutable
sealed class CharacterCubitState {}

final class CharacterCubitInitial extends CharacterCubitState {}

final class CharacterCubitloaded extends CharacterCubitState {
  List<Character> characters;
  CharacterCubitloaded({required this.characters});
}
