import 'package:breaking/constants/constants.dart';
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
  //services call
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

}