import 'package:aum/screens/live_darshan.dart';
import 'package:aum/screens/panchangam_calendar.dart';
import 'package:aum/screens/poojari.dart';
import 'package:aum/screens/profile.dart';
import 'package:aum/screens/shop.dart';
import 'package:aum/screens/temples.dart';
import 'package:flutter/material.dart';
import 'aum_icons.dart';
import './screens/temples.dart';
import './screens/login.dart';
import './screens/dashboard.dart';


class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            customDrawerHeader(context),
            createDrawerItem('Login', Icons.login, () {
              Navigator.of(context).pushNamed(Login.routeName);
            }),
            createDrawerItem('Temples', Aum.hindu_temple, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
            createDrawerItem('Poojari', Aum.user_circle, () {
              Navigator.of(context).pushNamed(Poojari.routeName);
            }),
            createDrawerItem('Poojas', Aum.aum_learning, () {
              Navigator.of(context).pushNamed(PanchangamCalendar.routeName);
            }),
            createDrawerItem('Homam', Aum.aum_learning, () {
              Navigator.of(context).pushNamed(PanchangamCalendar.routeName);
            }),
            createDrawerItem('Shop', Aum.shopping_bag, () {
              Navigator.of(context).pushNamed(Shop.routeName);
            }),
            createDrawerItem('Live Darshan', Aum.video_camera, () {
              Navigator.of(context).pushNamed(LiveDarshan.routeName);
            }),
            createDrawerItem('Vdios', Aum.video_player, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
            createDrawerItem('My Orders', Aum.shopping_cart_new, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
            Divider(),
            createDrawerItem('Festival Calendar', Aum.calendar_dates, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
            createDrawerItem('Notifications', Aum.notificationschool_bell, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
            createDrawerItem('Favorites', Aum.heart_nofill, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
            Divider(),
            createDrawerItem('Support', Aum.settings, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
            createDrawerItem('Settings', Aum.settings, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
            createDrawerItem('Logout', Icons.logout, () {
              Navigator.of(context).pushNamed(Temples.routeName);
            }),
          ],
        ),
      ),
    );
  }
}

/******    Side Menu    ********/
Widget customDrawerHeader(BuildContext context){
  return Container(
    height: 50.0,
    child: InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Profile.routeName);
      },
      child: DrawerHeader(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  "assets/images/user.png",
                  width: 50,
                  height: 50,
                  //fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Lakshmi Jayakumaran',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.white,
                ),
              ),
            ]),
        decoration: BoxDecoration(
          //color: Colors.red,
            color: const Color(0xffa10e1b)
        ),
        margin: EdgeInsets.zero,
        padding: EdgeInsets.all(10.0),
      ),
    ),
  );
}


Widget createDrawerItem(String text, IconData icon, Function onTapHandler)
{
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTapHandler,
    );
}
