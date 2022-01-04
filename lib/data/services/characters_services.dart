import '../../constants/constants.dart';
import 'package:dio/dio.dart';

class CharactersServices{
  late Dio dio;

  CharactersServices(){
   BaseOptions options = BaseOptions(
     baseUrl: baseUrl,
     //give me some information about error
     receiveDataWhenStatusError: true,
     connectTimeout: 20 * 1000, //20 seconds
     receiveTimeout: 20 * 1000,
   );
   dio = Dio(options);

  }
  //services call characters
  Future<List<dynamic>> getAllCharacters() async {
   try {
     Response response = await dio.get('characters');
     print(response.data.toString());
     return response.data;
   } catch (e) {
    print(e.toString());
    return [];
   }
  }

   //services call quote 
  Future<List<dynamic>> getCharacterQuotes(String charName) async {
   try {
     Response response = await dio.get('quote',queryParameters: {'author' : charName });
    
     print(response.data.toString());
     return response.data;
   } catch (e) {
    print(e.toString());
    return [];
   }
  }

}