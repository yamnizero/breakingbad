class CharacterModel{
 late int charId;
  late String name;
 late String nickName;
 late String image;
 late List<dynamic> jobs;
 late String statusIfDeadOrAlive;
 late List<dynamic> appearanceOfseasons;
 late String actorName;
 late String categoryForTwoSeries;
 late List<dynamic> betterCallSaulAppearnce;


  CharacterModel.fromJson(Map< String, dynamic > json){
    charId = json["char_id"];
    name = json["name"];
    nickName = json["nickname"];
    image = json["img"];
    jobs = json["occupation"];
    statusIfDeadOrAlive = json["status"];
    appearanceOfseasons = json["appearance"];
    actorName = json["portrayed"];
    categoryForTwoSeries = json["category"];
    betterCallSaulAppearnce = json["better_call_saul_appearance"];
  }
}