import '../business_logic/cubit/characters_cubit.dart';
import '../constants/constants.dart';
import '../data/models/characters_model.dart';
import '../data/repository/characters_repository.dart';
import '../data/services/characters_services.dart';
import '../view/screen/characters_details_screen.dart';
import '../view/screen/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case allcharactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: const CharactersScreen(),
          ),
        );

      case charactersdetails:
        final characterDetail = settings.arguments as CharacterModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => CharactersCubit(charactersRepository),
            child: CharacterDetailsScreen(
              characterModel: characterDetail,
            ),
          ),
        );
    }
  }
}
