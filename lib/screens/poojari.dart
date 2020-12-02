import 'package:aum/models/poojari_model.dart';
import 'package:flutter/material.dart';
import '../menu.dart';
import '../bloc/poojari_bloc.dart';

class Poojari extends StatelessWidget {
  static const routeName = '/poojari';

  @override
  Widget build(BuildContext context) {
    bloc.fetchAllPoojaries();
    return Scaffold(
      appBar: AppBar(
        title: Text("Poojari")
      ),
      drawer: MenuList(),
      body: StreamBuilder(
        stream: bloc.allPoojaries,
        builder: (context, AsyncSnapshot<PoojariModel> snapshot){
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.results.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(snapshot.data.results[index].id.toString()),
                  ),
                  title: Text(snapshot.data.results[index].body),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
