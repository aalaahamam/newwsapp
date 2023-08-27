import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/Data/models/getnews_Mode.dart';

/// عشان اكلم ال api
/// 
class GetNewsRepoo {
  /// بياخد وقت يكلم السيرفر
  
  Future<GetNewsModel?> getNews() async {
   //هكلمه بال http 
   try{
    var response = await http.get(Uri.parse(
       
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=37623a907ec34138bdb055c3662a451e"));
      /// لحد هنا كان لسه json 
      var jsonDecodeResponse = jsonDecode(response.body);

  ////برجع ال string لقيمه لاساسيه 
  if (response.statusCode == 200) {
 ////بقا dart object 
  GetNewsModel myRespnse=GetNewsModel.fromJson(jsonDecodeResponse);
 return myRespnse;
  } else {
return null;
  }

}catch(error){
  return null;
}
  }}
