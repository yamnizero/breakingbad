part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

// loading
class CharactersLoaded extends CharactersState {
  final List<CharacterModel> characters;

  CharactersLoaded(this.characters);
}

