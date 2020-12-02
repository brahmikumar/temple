import 'package:aum/screens/live_darshan.dart';
import 'package:aum/screens/mpin_registration.dart';
import 'package:aum/screens/otp_registration.dart';
import 'package:aum/screens/shop.dart';
import 'package:aum/screens/temples.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './screens/temples.dart';
import './screens/dashboard.dart';
import './screens/panchangam_calendar.dart';
import './screens/login.dart';
import './screens/otp.dart';
import './screens/temple_details.dart';
import './screens/poojari.dart';
import './screens/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const routeName = '/myApp';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aum Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Color(0xffa10e1b),
        canvasColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        Dashboard.routeName: (context) => Dashboard(),
        Temples.routeName: (context) => Temples(),
        PanchangamCalendar.routeName: (context) => PanchangamCalendar(),
        Login.routeName: (context) => Login(),
        OtpScreen.routeName: (context) => OtpScreen(),
        TempleDetails.routeName: (context) => TempleDetails(),
        Poojari.routeName: (context) => Poojari(),
        Profile.routeName: (context) => Profile(),
        Shop.routeName: (context) => Shop(),
        LiveDarshan.routeName: (context) => LiveDarshan(),
        MPINForRegistration.routeName: (context) => MPINForRegistration(),
        OtpForRegistration.routeName: (context) => OtpForRegistration(),
      },
      onGenerateRoute: (setting) {
        return MaterialPageRoute(builder: (ctx) => Dashboard());
      },
      onUnknownRoute: (setting) {
        return MaterialPageRoute(builder: (ctx) => Dashboard());
      },
    );
  }
}

