import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import '../provider/shopping_provider.dart';
import '../models/shopping_model.dart';

class ShoppingBloc{
  final shoppingProvider = new ShoppingProvider();
  final _shoppingContoller = PublishSubject<ShoppingModel>();

  Stream<ShoppingModel> get allShoppingList => _shoppingContoller.stream;

  fetchAllShoppingList() async{
    ShoppingModel shoppingModel = await shoppingProvider.fetchShoppingList();
    _shoppingContoller.sink.add(shoppingModel);
  }

  dispose(){
    _shoppingContoller.close();
  }
}

final shoppingBloc = ShoppingBloc();