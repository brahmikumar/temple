import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../bottomnavigation.dart';
import '../menu.dart';
import '../widgets/quicklinks.dart';
import '../widgets/panchangam.dart';
import '../widgets/favorites.dart';
//import '../main.dart';

class Dashboard extends StatelessWidget {
  static const routeName = '/dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              Image.asset("assets/images/india.png"),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your Location", style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    )),
                    Text("Bangalore", style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.arrow_drop_down_sharp),
              )
            ],
          ),
          backgroundColor: Colors.white,
          iconTheme: new IconThemeData(color: Colors.black),
          /*leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
            color: Colors.black,
          ),*/

          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 26.0,
                    color: Color(0xffa10e1b),
                  ),
                )
            ),
          ]
      ),

      drawer: MenuList(),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Pnchangam(),
              categoryTitleBar(title: 'Quick Links',
                  label: '',
                  icon: Icons.arrow_circle_down),
              //SizedBox(height:15),
              QuickLinks(),
              packageSection,
              categoryTitleBar(title: 'Favorites',
                  label: 'See all',
                  icon: Icons.arrow_circle_down),
              Favorites(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}


Widget packageSection = Container(
  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
  child: Image.asset(
    "assets/images/package.jpeg",
    //width: MediaQuery.of(context).size.width,
    //fit: BoxFit.fitWidth
    height: 180,
    fit: BoxFit.fitWidth,
  ),
);


Widget categoryTitleBar({String title,  String label, IconData icon}){
  return Padding(
    padding: const EdgeInsets.fromLTRB(15,10,15,0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(title, style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text((label != "") ? label : "", style: TextStyle(
                //child: Text("See all", style: TextStyle(
                color: Colors.deepPurple,
              ),),
            ),
            //(icon != "") ? Icon(icon) : "",
            (label != "") ? Icon(icon) : Text(""),
            //Icon(icon)
          ],
        )
      ],
    ),
  );
}

