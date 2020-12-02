import 'dart:convert';
import 'package:aum/supoorting/static.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/shopping_model.dart';

class ShoppingProvider{
  Future<ShoppingModel> fetchShoppingList() async{
    //final response = await http.get("https://www.pesuacademy.com/MAcademy/mobile/dispatcher?action=20&mode=5&minLimit=0&limit=10&appId=1");
    //final response = await http.post("https://www.pesuacademy.com/MAcademy/mobile/dispatcher", body: {
    /*final response = await http.post(URL, body: {
      'action': '20',
       'mode': '5',
      'minLimit': '0',
      'limit': '10',
      'appId': '1',
    },
    headers: {
      'mobileappauthenticationtoken': 'rFZqnNTVnqEJkpA3LFnucue6HwbvSKEB9vyks6p1hWaqJBykuchcVOLySrquPzRlQ8JG5WhNB9Y6JyyedhMXEh0PjxRuxF61',
    });*/


    final token = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJ0ZXN0Iiwic2NvcGUiOlsicmVhZCIsIndyaXRlIl0sImV4cCI6MTYwNzA2Mjc4MywidHRsIjoyNTkyMDAsInVzZXJpZCI6MSwiYXV0aG9yaXRpZXMiOlsiQURNSU4iXSwianRpIjoiNmE5NzVlNzQtNjJhZS00Yzc2LThjZTAtNDcwODYzMmNhNmNlIiwiY2xpZW50X2lkIjoiYWRtaW4td2ViIiwidXNlcm5hbWUiOiJ0ZXN0In0.VW2_C3brk8k9RXwPfdTvVupbIs8qzfjp8QjFiSAbVH3fxEMvewA1GqMWjQjFT5xh5Hg0zLFtId8UO-soKN1WK1AUe0UzuoJd311-m1MK-T4lC-OMiRxSrEodVxL-syn2cCyeXNwgSI92ublAvGqKHKNwzmVbfbbaaOwWFn5HtWO4LRZnyMQrh9of324W5Wbk0rX6cDnir0Ebxyqj2cbMVMuDb3uQw_NzHUlRReB2iivaPCvfyPLaIeebQBQ3oxJ8-_LQ2Ta4Gsvg33p8N9uObf0YWWSKIGxcNaxc-7cJ965VtpNMx99_8zack5K50I_K69vd5AFP0U02EmK19pdsQw";
    //final response = await http.get("http://172.16.175.80/temples/templesList", headers: {
    final response = await http.get(URL, headers: {
      'Content-Type': 'application/json',
      //'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if(response.statusCode == 200){
      print("result: ${response.body}");
      return ShoppingModel.fromJson(jsonDecode(response.body));
    }
    else{
      print("Request failed");
    }
  }
}


