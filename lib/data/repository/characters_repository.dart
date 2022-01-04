import '../models/characters_model.dart';
import '../models/quote.dart';
import '../services/characters_services.dart';

class CharactersRepository{


 final CharactersServices charactersServices;

  CharactersRepository(this.charactersServices);


 // allCharacter
  Future<List<CharacterModel>> getAllCharacters() async {
    final characters = await charactersServices.getAllCharacters();
    return characters.map((character) => CharacterModel.fromJson(character)).toList(); 
  }

 //Quotes 
  Future<List<QuoteModel>> getCharacterQuotes(String charName) async {
    final quotes  = await charactersServices.getCharacterQuotes(charName);
    return quotes.map((charQuotes) => QuoteModel.fromJson(charQuotes)).toList(); 
  }
}