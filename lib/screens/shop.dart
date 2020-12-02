import 'dart:convert';

import 'package:aum/models/shopping_model.dart';
import 'package:flutter/material.dart';

import '../menu.dart';
import '../bloc/shopping_bloc.dart';

class Shop extends StatelessWidget {
  static const routeName = "/shop";
  @override
  Widget build(BuildContext context) {
    shoppingBloc.fetchAllShoppingList();
    return Scaffold(
      appBar: AppBar(
          title: Text("Shop")
      ),
      drawer: MenuList(),
      body: StreamBuilder(
        stream: shoppingBloc.allShoppingList,
        builder: (context, AsyncSnapshot<ShoppingModel>snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.results.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    margin: EdgeInsets.all(10),
                    //child: Text(snapshot.data.results[index].announcementId.toString()),
                    //child: Image.network(snapshot.data.results[index].pictureIconPath),
                    child: Image.asset("assets/images/general.png"),
                      //child: getBase64Image(snapshot.data.results[index].pictureIconPath),
                    //Image.memory(),
                      //Image.memory(base64Decode(snapshot.data.results[index].pictureIconPath)),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(snapshot.data.results[index].announcementName),
                      /*Text(DateTime.fromMillisecondsSinceEpoch(snapshot.data.results[index].startdate.toString()).day, style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      )),*/
                      Text(snapshot.data.results[index].startdate.toString(), style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      )),
                    ],
                  ),
                );
              },
            );
          }
          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }



}

Image getBase64Image(String base64Image){
  return Image.memory(base64Decode(base64Image));
}