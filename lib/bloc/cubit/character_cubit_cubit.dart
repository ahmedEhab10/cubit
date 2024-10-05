import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'character_cubit_state.dart';

class CharacterCubitCubit extends Cubit<CharacterCubitState> {
  CharacterCubitCubit() : super(CharacterCubitInitial());
}
