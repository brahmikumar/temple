import 'package:aum/widgets/contact_details.dart';
import 'package:aum/widgets/events.dart';
import 'package:aum/widgets/live_darshan.dart';
import 'package:aum/widgets/upcoming_events.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:share/share.dart';

import '../aum_icons.dart';
import '../bottomnavigation.dart';
import '../menu.dart';


class TempleDetails extends StatelessWidget {
  static const routeName = '/temple_details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuList(),
        appBar: AppBar(
            title: Text('Temples', style: TextStyle(
              color: Color(0xffaa2430),
            )),

            backgroundColor: Colors.white,

            iconTheme: new IconThemeData(color: Colors.black),
            /*leading: IconButton(
              icon: Icon(Icons.sort_sharp),
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

        body: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      color: Color(0xfffafafa),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sri Venkateswara Maha Vishnu Temple", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                          SizedBox(width: 30),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: Image.asset("assets/images/temple.jpeg",
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.fitWidth,
                                  ),
                              ),
                              Positioned(
                                top:0,
                                right: 0,
                                child: Container(
                                  color: Color(0xff619cf7),
                                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("See Photos", style: TextStyle(
                                        color: Colors.white,
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                left: 10,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                    color: Color(0xfff2eeee),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                    alignment: Alignment.bottomLeft,
                                    child: Row(
                                      children: [
                                        Icon(Icons.star,
                                          color: Color(0xfffbc40c), size: 20,
                                        ),
                                        Text("4.3"),
                                        Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 12,),
                                        SizedBox(width: 8),
                                        Text("200+ Reviews"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                bottom: 5,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        //https://image.shutterstock.com/image-photo/panorama-beautiful-countryside-romania-sunny-260nw-1302294157.jpg
                                        Share.share('Sri Venkateshwara Maha Vishnu Temple');
                                        /*Share.shareFiles(['https://image.shutterstock.com/image-photo/panorama-beautiful-countryside-romania-sunny-260nw-1302294157.jpg'],
                                            text: 'Sri Venkateshwara Maha Vishnu Temple', subject: "Temple");*/
                                      },
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Color(0xfff2eeee),
                                        child: Icon(Icons.reply_outlined, color: Colors.grey, size: 20,),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xfff2eeee),
                                      child: Icon(Icons.favorite_outline_sharp, color: Colors.grey, size: 20,),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),

                          Column(
                            children: [

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text("This temple occupying with 3000 sq.ft is something of an appreciable work of 21st century", style: TextStyle(
                                    color: Color(0xffa19fa4),
                                  )),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    //crossAxisAlignment: CrossAxisAlignment.end,
                                    //mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("More Info", style: TextStyle(
                                        color: Color(0xff93a3e2),
                                      )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text("Ring road, Banashankari, Bangalore"),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        //MapsLauncher.launchCoordinates(37.4220041, -122.0862462);
                                        MapsLauncher.launchQuery('Banashankari');
                                      },
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text("2 Kms")
                                        ],
                                      ),
                                    ),
                                    SizedBox(width:30),
                                    Row(
                                      children: [
                                        Icon(Icons.directions),
                                        Text("Route")
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Hours", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                          SizedBox(width:20),
                                          Text("Closed", style: TextStyle(
                                            color: Color(0xfff2452e),
                                          ))
                                        ],
                                      ),
                                      SizedBox(width:30),
                                      Row(
                                        children: [
                                          Text("Opens 3:30 PM"),
                                          SizedBox(width:10),
                                          Icon(Icons.arrow_drop_down_outlined),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Color(0xfffafafa),
                                  padding: EdgeInsets.all(8),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Annadanam Timings", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff7c7c7c),
                                      )),
                                      SizedBox(height: 5),
                                      Text("12:00 Noon - 2:00 PM"),
                                      SizedBox(height: 5),
                                      Text("7:30 PM - 8:30 PM"),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Color(0xfff7f6d4),
                                  padding: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Special Navaratri Pooja Every Friday", style: TextStyle(
                                        color: Color(0xff666666),
                                      )
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  TempleOperations(),
                  TempleRoutine(),
                  SizedBox(height: 10,),
                  categoryTitleBar(title: 'Today Events',
                      label: '',
                      icon: Icons.arrow_circle_down),
                  Events(),
                  categoryTitleBar(title: 'Live Darshan',
                      label: 'See all',
                      icon: Icons.arrow_circle_down),
                  LiveDarshan(),
                  SizedBox(height: 10,),
                  categoryTitleBar(title: 'Upcoming Events',
                      label: 'See all',
                      icon: Icons.arrow_circle_down),
                  UpcomingEvents(),
                  Facilities(),
                  DressCode(),
                  BordOfTrusties(),
                  ContactDetails(),
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar: BottomNav(),
    );
  }
}

Widget TempleRoutine(){
  return Container(
    color: Color(0xfffbc40c),
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Temple Routines", style: TextStyle(
          fontSize: 20,
        )),
        SizedBox(height: 10),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Kamatha Pooja"),
                    SizedBox(width: 25),
                    Icon(Icons.check_circle, color: Color(0xff309f1a), size: 20,),
                  ],
                ),
                Text("5:30 AM"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Supura Patha Pooja"),
                    SizedBox(width: 25),
                    Icon(Icons.check_circle, color: Color(0xff309f1a), size: 20,),
                  ],
                ),
                Text("5:45 AM"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Morning Pooja"),
                    SizedBox(width: 25),
                    Icon(Icons.check_circle, color: Color(0xff309f1a), size: 20,),
                  ],
                ),
                Text("6:00 AM"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Noon Pooja"),
                    SizedBox(width: 25),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        color: Color(0xffa10e1b),
                        padding: EdgeInsets.symmetric(vertical:3, horizontal: 10),
                        child: Text("Happeing Now", style:TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Text("12:00 PM"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Sayaruksha Pooja"),
                    SizedBox(width: 25),
                    Icon(Icons.videocam, color: Color(0xffa10e1b), size: 30,)
                  ],
                ),
                Text("05:00 PM"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Palliyarai Pooja"),
                  ],
                ),
                Text("07:30 PM"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Special Pooja"),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    color: Color(0xffa10e1b),
                    padding: EdgeInsets.symmetric(vertical:5, horizontal: 10),
                    child: Text("Book Now", style:TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}


Widget TempleOperations(){
  return Container(
    //color: Color(0xfffbc40c),
    padding: EdgeInsets.all(15),
    height: 180,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        quickLinkItem("assets/images/seva.jpeg", "Book Seva"),
        quickLinkItem("assets/images/calendar.jpeg", "Calendar"),
        quickLinkItem("assets/images/hundi.jpeg", "Hundi"),
        quickLinkItem("assets/images/donations.jpeg", "Donations"),
      ],
    )
  );
}

Widget quickLinkItem(String img, String label) {
  return Container(
    width: 120,
    padding: EdgeInsets.only(right: 15),
    child: InkWell(
      onTap: (){
        //Navigator.of(context).pushNamed(Temples.routeName);
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              img,
              width: 120,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget DressCode(){
  return Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.all(10),
    color: Color(0xfffffff4),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Dress Code", style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        )),
        SizedBox(height:20),
        Container(
          padding: EdgeInsets.only(left: 0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.pregnant_woman, size: 40,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Male", style: TextStyle(color: Color(0xff999999))),
                      Text("White Pancha, Dorthi/Kurtha")
                    ],
                  )
                ],
              ),
              SizedBox(height:20),
              Row(
                children: [
                  Icon(Icons.pregnant_woman, size: 40,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Female", style: TextStyle(color: Color(0xff999999))),
                      Text("Saree/ Chudidhar with Duppatta/ Half Saree")
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    )
  );
}

Widget Facilities(){
  return Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.all(10),
    color: Color(0xfffafafa),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Facilites", style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        )),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Venkateswara Function Hall"),
                RaisedButton(
                  onPressed: (){
                    //Navigator.pushNamed(context,'/otp');
                  },
                  color: Color(0xfffbc40c),
                  child: Text('Book Now'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Gaushala"),
                RaisedButton(
                  onPressed: (){
                    //Navigator.pushNamed(context,'/otp');
                  },
                  color: Color(0xfffbc40c),
                  child: Text('Book Now'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rooms"),
                RaisedButton(
                  onPressed: (){
                    //Navigator.pushNamed(context,'/otp');
                  },
                  color: Color(0xfffbc40c),
                  child: Text('Book Now'),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

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

Widget BordOfTrusties(){
  return Container(

  );
}
