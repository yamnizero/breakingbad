import 'package:bloc/bloc.dart';
import 'package:breaking/data/models/characters_model.dart';
import 'package:breaking/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
final CharactersRepository charactersRepository;
  List<CharacterModel> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<CharacterModel> getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters) {
     emit(CharactersLoaded(characters));
     this.characters = characters;
    });
    return characters;
  }
}
