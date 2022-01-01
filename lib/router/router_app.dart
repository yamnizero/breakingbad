import 'package:breaking/constants/constants.dart';
import 'package:breaking/view/screen/characters_details.dart';
import 'package:breaking/view/screen/characters_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
   
  Route? generateRouter (RouteSettings settings){

    switch (settings.name) {
      case allcharactersScreen :
        return MaterialPageRoute(builder: (_) => const CharactersScreen());

        case charactersdetails :
        return MaterialPageRoute(builder: (_) => const CharacterDetails());
    }

  }
}