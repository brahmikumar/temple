import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/poojari_model.dart';

class PoojariNetworkProvider{
  Future<PoojariModel> fetchPoojariesList() async{
    final response = await http.get("https://jsonplaceholder.typicode.com/posts");
    if(response.statusCode == 200){
      print("result : ${response.body}");
      return PoojariModel.fromJson(json.decode(response.body));
    }
    else{
      throw Exception('Failed to get data');
    }
  }
}

