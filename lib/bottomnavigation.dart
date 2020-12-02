
import 'package:aum/screens/dashboard.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {

  void selectPage(int index) {
    print("page Index ${index}");
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 10)],
      ),
      child: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,// this will be set when a new tab is tapped
        unselectedItemColor:Color(0xffA10E1B),
        selectedItemColor:Color(0xffA10E1B) ,
        selectedFontSize: 11.0,
        unselectedFontSize: 11.0,
        iconSize: 25.0,
        onTap: selectPage,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            //title: new Text('Aum'),
            label: 'Aum',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            //title: new Text('Search'),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.miscellaneous_services),
              //title: Text('Services'),
              label: 'Services',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              //title: Text('Cart'),
              label: 'Cart',
          )
        ],
      ),
    );
  }
}
