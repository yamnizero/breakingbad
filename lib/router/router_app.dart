import 'package:breaking/business_logic/cubit/characters_cubit.dart';
import 'package:breaking/constants/constants.dart';
import 'package:breaking/data/repository/characters_repository.dart';
import 'package:breaking/data/services/characters_services.dart';
import 'package:breaking/view/screen/characters_details.dart';
import 'package:breaking/view/screen/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {

    late CharactersRepository charactersRepository;
    late CharactersCubit charactersCubit;

   AppRouter(){
     charactersRepository = CharactersRepository(CharactersServices());
     charactersCubit = CharactersCubit(charactersRepository);
   }
   
  Route? generateRouter (RouteSettings settings){
  
    switch (settings.name) {
      case allcharactersScreen :
        return MaterialPageRoute(builder: (_) =>BlocProvider(
          create: (BuildContext context) => charactersCubit,
          child: const CharactersScreen(),
          ),
          );

        case charactersdetails :
        return MaterialPageRoute(builder: (_) => const CharacterDetails());
    }

  }
}