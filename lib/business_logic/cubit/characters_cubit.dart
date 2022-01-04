import 'package:bloc/bloc.dart';
import '../../data/models/characters_model.dart';
import '../../data/models/quote.dart';
import '../../data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
final CharactersRepository charactersRepository;
  List<CharacterModel> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  //allCharacter
  List<CharacterModel> getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters) {
     emit(CharactersLoaded(characters));
     this.characters = characters;
    });
    return characters;
  }

  //Quotes
  void getQuotes(String charName){
    charactersRepository.getCharacterQuotes(charName).then((quotes) {
     emit(QuotesLoaded(quotes));
    });
  }
}
