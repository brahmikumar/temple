import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LiveDarshan extends StatefulWidget {
  static const routeName = '/livedarshan';
  @override
  _LiveDarshanState createState() => _LiveDarshanState();
}

Future<Album> fetchAlbum() async {
  final response =
  await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if(response.statusCode == 200){
    // If the server did return a 200 OK response,
    // then parse the JSON.
    //print("Response: "+ response.body);
    print("Response: "+ response.body);
    return Album.fromJson(jsonDecode(response.body));
  }else{
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}


class _LiveDarshanState extends State<LiveDarshan> {
  Future<Album> futureAlbum;

  Future verifyMobileNumber() async{
    final response1 = await http.get('https://jsonplaceholder.typicode.com/albums/1');

    print("Response: "+ jsonDecode(response1.body)['title']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live Darshan")
      ),

      body: Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: (){
                /*Future futureAlbum = fetchAlbum();
                print("result :"+ futureAlbum.toString());*/
                verifyMobileNumber();
              },
              child: Text("Click Me")
            )
          ],
        ),
      )
    );
  }
}
