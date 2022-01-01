import 'package:breaking/data/models/characters_model.dart';
import 'package:breaking/data/services/characters_services.dart';

class CharactersRepository{


 final CharactersServices charactersServices;

  CharactersRepository(this.charactersServices);

  Future<List<dynamic>> getAllCharacters() async {
    final characters = await charactersServices.getAllCharacters();
    return characters.map((character) => CharacterModel.fromJson(character)).toList(); 
  }

}