part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

// loading
class CharactersLoaded extends CharactersState {
  final List<CharacterModel> characters;

  CharactersLoaded(this.characters);
}
// quote
class QuotesLoaded extends CharactersState {
  final List<QuoteModel> quotes;

  QuotesLoaded(this.quotes);
}

