import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import '../aum_icons.dart';
import '../bottomnavigation.dart';
import '../menu.dart';


class PanchangamCalendar extends StatefulWidget {
  static const routeName = "/panchangamCalendar";
  @override
  _PanchangamCalendarState createState() => _PanchangamCalendarState();
}

class _PanchangamCalendarState extends State<PanchangamCalendar> {
  DateTime _currentDate = DateTime(2020, 2, 3);


  var panchangamData = {
    "day": "Wednesday",
    "sunrise": "7:3:17",
    "sunset": "18:43:38",
    "moonrise": "10:59:45",
    "moonset": "0:9:13",
    "tithi": {
      "details": {
        "tithi_number": 7,
        "tithi_name": "Shukla-Saptami",
        "special": "Bhadra Tithi",
        "summary": "Favourable for starting any new work, debate, beginning of a journey and physical exercise.",
        "deity": "Indra"
      },
      "end_time": {
        "hour": 10,
        "minute": 55,
        "second": 8
      }
    },
    "nakshatra": {
      "details": {
        "nak_number": 3,
        "nak_name": "Krittika",
        "ruler": "Sun",
        "deity": "Agni",
        "special": "Adhomukh Nakshatra",
        "summary": "This nakshatra is of a mixed quality. Good for immediate actions, competition, work with metals. It is suitable to perform the routine activities, day-to-day duties, but it is not recommended to start new important deeds."
      },
      "end_time": {
        "hour": 17,
        "minute": 48,
        "second": 8
      }
    },
    "yog": {
      "details": {
        "yog_number": 26,
        "yog_name": "Endra",
        "special": "Auspicious yoga,Good for all Auspicious Deeds.",
        "meaning": "(Chief) � interest in education and knowledge; helpful, well-off."
      },
      "end_time": {
        "hour": 7,
        "minute": 57,
        "second": 19
      }
    },
    "karan": {
      "details": {
        "karan_number": 7,
        "karan_name": "Vanija",
        "special": "It is suited for sale transactions and sellers may reap good profits whereas buyers may incur losses in this Karana.",
        "deity": "Manibhadra"
      },
      "end_time": {
        "hour": 10,
        "minute": 57,
        "second": 8
      }
    },
    "hindu_maah": {
      "adhik_status": false,
      "purnimanta": "Phalguna",
      "amanta": "Phalguna"
    },
    "paksha": "Shukla-Paksha",
    "ritu": "Shishir",
    "sun_sign": "Aquarius",
    "moon_sign": "Taurus",
    "ayana": "Uttarayana",
    "panchang_yog": " Sarvarth Siddhi Yog",
    "vikram_samvat": 2071,
    "shaka_samvat": 1936,
    "shaka_samvat_name": "Jay",
    "vkram_samvat_name": "Plavang",
    "disha_shool": "NORTH",
    "disha_shool_remedies": [],
    "nak_shool": "none",
    "moon_nivas": "SOUTH",
    "abhijit_muhurta": {
      "start": "12:29",
      "end": "01:15"
    },
    "rahukaal": {
      "start": "12 : 52 : 59",
      "end": "2 : 20 : 29"
    },
    "guliKaal": {
      "start": "11 : 25 : 29",
      "end": "12 : 52 : 59"
    },
    "yamghant_kaal": {
      "start": "08 : 30 : 29",
      "end": "09 : 57 : 59"
    }
  };




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuList(),
      appBar: AppBar(
        title: Text('Panchangam', style: TextStyle(
          color: Colors.black,
        )),
        backgroundColor: Color(0xfffbc40c),
        iconTheme: new IconThemeData(color: Colors.black),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.qr_code_scanner_outlined,
                size: 26.0,
                color: Colors.black,
              ),
            )
          ),
        ]
      ),
      body: Container(
        child: SingleChildScrollView(
          child:Column(
            children: [
              renderCalendarView(),
              todyPanchangamSummary(),
              Divider(height: 0.4,),
              horoScope(),
              todayPanchangam(),
              selectedMonthPanchangam(),
            ],
          )
        )
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

Widget todayPanchangam(){
  return Container(
    color: Color(0xfffafafa),
    width: double.infinity,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            //SizedBox(height:5),
            Text("Rahukalam", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
            Text("Yamagandam", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
            Text("Gulika", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
            Text("DurMuhurtham", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
          ],
        ),
        Divider(height: 30,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Auspecious Period", style: TextStyle(color: Color(0xff9f9f9f), fontSize: 22)),
            //SizedBox(height:5),
            Text("Rahukalam", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
            Text("Yamagandam", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
            Text("Gulika", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
          ],
        ),
        Divider(height: 30,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Tithi", style: TextStyle(color: Color(0xff9f9f9f), fontSize: 22)),
            //SizedBox(height:5),
            Text("Rahukalam", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
            Text("Yamagandam", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
            Text("Gulika", style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, height: 2)),
            Text("1:25 PM - 2:56 PM", style: TextStyle()),
          ],
        ),
      ],
    ),
  );
}

Widget selectedMonthPanchangam(){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("This Month", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Table(
          columnWidths: {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(4),
            2: FlexColumnWidth(4),
          },
          border: TableBorder(horizontalInside: BorderSide(width: 1, color: Color(0xffeeeeee), style: BorderStyle.solid)),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              Icon(Icons.circle),
              Text('Amavasai', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,15,10,15),
                child: Text('17-Nov-2020, Monday  ', textAlign: TextAlign.end),
              ),
            ]),
            TableRow(children: [
              Icon(Icons.remove_circle_outline_rounded),
              Text('Pournami', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,15,10,15),
                child: Text('30-Nov-2020, Monday  ', textAlign: TextAlign.end),
              ),
            ]),
            TableRow(children: [
              Icon(Icons.star),
              Text('Karthigai', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,15,10,15),
                child: Text('1-Nov-2020, Monday  ', textAlign: TextAlign.end),
              ),
            ]),
            TableRow(children: [
              Text(""),
              Text('Shakthiviradham', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,15,10,15),
                child: Text('5-Nov-2020, Monday  ', textAlign: TextAlign.end),
              ),
            ]),
            TableRow(children: [
              Text(""),
              Text('Shankathahara Chathurthi', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,15,10,15),
                child: Text('15-Nov-2020, Monday  ', textAlign: TextAlign.end),
              ),
            ]),
          ],
        )
      ],
    ),
  );
}

Widget horoScope(){
  return Container(
    color: Color(0xffa10e1b),
    padding: const EdgeInsets.all(15),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Horoscope", style: TextStyle(
          fontSize: 20, color: Colors.white,
        ),),
        SizedBox(height:10),
        GridView.count(
          crossAxisCount: 2,
          //crossAxisSpacing: 1.0,
          //mainAxisSpacing: 1.0,
          childAspectRatio: 5,
          shrinkWrap: true,
          children: List.generate(horoscopes.length, (index) {
              return Center(
                child: HoroscopeGrid(horoscope: horoscopes[index]),
              );
            }
          )
        )
      ],
    ),
  );
}

Widget renderCalendarView(){
  return Container(
    color: Color(0xfffbc40c),
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: CalendarCarousel<Event>(
      onDayPressed: (DateTime date, List<Event> events) {
        //this.setState(() => _currentDate = date);
      },
      thisMonthDayBorderColor: Color(0xfff4bc0a),
      customDayBuilder: (   /// you can provide your own build function to make custom day containers
          bool isSelectable,
          int index,
          bool isSelectedDay,
          bool isToday,
          bool isPrevMonthDay,
          TextStyle textStyle,
          bool isNextMonthDay,
          bool isThisMonthDay,
          DateTime day,
      ) {
        if (day.day == 15) {
          return Center(
            child: Row(
              children: [
                Icon(Icons.circle, color: Color(0xffa10e1b)),
                Text(day.day.toString()),
              ],
            ),
          );
        } else {
          return null;
        }
      },
      weekFormat: false,
      height: 380.0,
      daysHaveCircularBorder: false,
      //showIconBehindDayText: false,
      onCalendarChanged: (changedDate) {
        print("cal changed: "+ changedDate.toString());
      },
      headerTextStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
      daysTextStyle: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.bold),
      iconColor: Color(0xffa10e1b),
      weekdayTextStyle: TextStyle(fontSize: 14,color: Colors.black,),
      weekendTextStyle: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.bold),
      showOnlyCurrentMonthDate: true,//#f2de97
      todayButtonColor: Color(0xfffce79d),
      todayBorderColor: Color(0xfffce79d),
      todayTextStyle: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}


Widget todyPanchangamSummary(){
  return Container(
    color: Color(0xffa10e1b),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*Text(panchangamData["day"], style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              )),*/
              Text("24-11-2020, Tuesday", style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              )),
              SizedBox(height:15),
              Text("Saarvari, Purattaasi 7 - Valarpirai", style: TextStyle(
                //fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w300
              )),
              SizedBox(height:5),
              Text("Sama Nokku Nal", style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
            ],
          ),
        ),
        Divider(color: Colors.red, thickness: 0.2,),
        //SizedBox(height:5),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nallaneram", style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontWeight: FontWeight.w300
                  )),
                  Text("Morning: 06:15 - 07:15", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    height: 1.5
                  )),
                  Text("Evening: 05:15 - 06:15", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    height: 1.5
                  )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gowri Nallaneram", style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontWeight: FontWeight.w300,
                  )),
                  Text("Morning: 04:15 - 05:15", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    height: 1.5
                  )),
                  Text("Evening: 04:15 - 05:15", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    height: 1.5
                  )),
                ],
              )
            ],
          ),
        ),
        //SizedBox(height:5),
        Padding(
          padding: const EdgeInsets.fromLTRB(15,0,15,15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Aum.sunrise, color: Color(0xfffbc40c),),
                  SizedBox(width:5),
                  Text("Sunrise: ", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )),
                  Text("06:31 AM", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )),
                ],
              ),
              Row(
                children: [
                  Icon(Aum.sunset, color: Color(0xfffbc40c),),
                  SizedBox(width:5),
                  Text("Sunset: ", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )),
                  Text("06:31 PM", style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class HoroScope {
  const HoroScope({this.title, this.message, this.icon});

  final String title;
  final String message;
  final IconData icon;
}

const List<HoroScope> horoscopes = const <HoroScope>[
  const HoroScope(title:"Mesha", message:"Profit", icon:Icons.circle),
  const HoroScope(title:"Thula", message:"Profit", icon:Icons.star),
  const HoroScope(title:"Vrishabha", message:"Profit", icon:Icons.circle),
  const HoroScope(title:"Vrishaka", message:"Profit", icon:Icons.star),
  const HoroScope(title:"Vrishaka", message:"Profit", icon:Icons.star),
  const HoroScope(title:"Vrishaka", message:"Profit", icon:Icons.star),
];

class HoroscopeGrid extends StatelessWidget{
  const HoroscopeGrid({Key key, this.horoscope}) : super(key: key);
  final HoroScope horoscope;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height:20,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Icon(horoscope.icon, color: Colors.white),
              SizedBox(width:3),
              Text(horoscope.title, style: TextStyle(color: Colors.white)),
            ],
          ),
          SizedBox(width:5),
          Text(horoscope.message, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }
}





// API c568d42464dea51825e67348c3084803  && UserId: 614954


/*class HoroscopeGrid extends StatelessWidget {
  const HoroscopeGrid({Key key, this.horoscope}) : super(key: key);
  final HoroScope horoscope;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
        color: Colors.orange,
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size:50.0, color: textStyle.color)),
              Text(choice.title, style: textStyle),
            ]
        ),
        )
    );
  }
}*/


/*Future<Album> fetchAlbum() async {
  final response =
  await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
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

class PanchangamCalendar extends StatefulWidget {
  static const routeName = '/pancahngam_calendar';
  @override
  _PanchangamCalendarState createState() => _PanchangamCalendarState();
}

class _PanchangamCalendarState extends State<PanchangamCalendar> {
  Future<Album> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panchangam Calendar"),
      ),
      body: Container(
        *//*child: Column(
          children: [
            Text("Calendar View"),

          ],
        ),*//*

        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),

      ),
    );
  }
}*/

