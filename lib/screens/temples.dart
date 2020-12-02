import 'dart:convert';
import 'package:aum/bloc/temples.dart';
import 'package:aum/models/temples.dart';
import 'package:aum/supoorting/static.dart';
import 'package:flutter/material.dart';
import '../aum_icons.dart';
import '../menu.dart';
import '../bottomnavigation.dart';
import './temple_details.dart';

import 'package:http/http.dart' as http;


class Temples extends StatefulWidget {
  static const routeName = '/temples';
  @override
  _TemplesState createState() => _TemplesState();
}

class _TemplesState extends State<Temples> {
  int templesCount = 0;

  @override
  void initState() {
    super.initState();
    //getTemples();
    setState(() {
      templesCount = 2;
    });
  }

  var temples = [];

   Future getTemples() async{
     final response = await http.get(URL, headers: {
       'Content-Type': 'application/json',
       'Authorization': 'Bearer $token',
     });

     if(response.statusCode == 200){
       /*print("temples data : ${response.body}");
       print("temples data1 : ${jsonDecode(response.body)}");*/
       //temples = jsonDecode(response.body);

       setState(() {
         temples = jsonDecode(response.body);
       });

       print("temples data3 : ${temples.length}");
       return "";
       //return ShoppingModel.fromJson(jsonDecode(response.body));
     }
     else{
       print("Request failed");
     }
   }

  final token = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJ0ZXN0Iiwic2NvcGUiOlsicmVhZCIsIndyaXRlIl0sImV4cCI6MTYwNzA2Mjc4MywidHRsIjoyNTkyMDAsInVzZXJpZCI6MSwiYXV0aG9yaXRpZXMiOlsiQURNSU4iXSwianRpIjoiNmE5NzVlNzQtNjJhZS00Yzc2LThjZTAtNDcwODYzMmNhNmNlIiwiY2xpZW50X2lkIjoiYWRtaW4td2ViIiwidXNlcm5hbWUiOiJ0ZXN0In0.VW2_C3brk8k9RXwPfdTvVupbIs8qzfjp8QjFiSAbVH3fxEMvewA1GqMWjQjFT5xh5Hg0zLFtId8UO-soKN1WK1AUe0UzuoJd311-m1MK-T4lC-OMiRxSrEodVxL-syn2cCyeXNwgSI92ublAvGqKHKNwzmVbfbbaaOwWFn5HtWO4LRZnyMQrh9of324W5Wbk0rX6cDnir0Ebxyqj2cbMVMuDb3uQw_NzHUlRReB2iivaPCvfyPLaIeebQBQ3oxJ8-_LQ2Ta4Gsvg33p8N9uObf0YWWSKIGxcNaxc-7cJ965VtpNMx99_8zack5K50I_K69vd5AFP0U02EmK19pdsQw";

  @override
  Widget build(BuildContext context) {
    templesBloc.fetchAllTemplesList();
    return Scaffold(
      drawer: MenuList(),
      appBar: AppBar(
          title: Text('Temples', style: TextStyle(
            color: Color(0xffaa2430),
          )),
          backgroundColor: Colors.white,
          iconTheme: new IconThemeData(color: Colors.black),

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

      body: StreamBuilder(
        stream: templesBloc.allTemplesList,
        builder: (context, AsyncSnapshot<TemplesModel>snapshot){
          print("server details data");
          if(snapshot.hasData){
            print(snapshot.data.results[0].templeName);
            return ListView.builder(
              itemCount: snapshot.data.results.length,
              itemBuilder: (context, index){
                /*return Column(
                  children: [
                    Text(snapshot.data.results[index].templeName),
                    Text(snapshot.data.results[index].templeDescription),
                    Text(snapshot.data.results[index].templeAddress),
                  ],
                );*/

                return InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(TempleDetails.routeName);
                  },
                  child: Column(
                    children: [
                      /*Image.asset("assets/images/temple.jpeg",
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.fitWidth,
                      ),*/
                      Image.network(snapshot.data.results[index].imagePath1,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(snapshot.data.results[index].templeName, style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(snapshot.data.results[index].templeDescription, style: TextStyle(
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
                              child: Text(snapshot.data.results[index].templeAddress),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text("2 Kms")
                                  ],
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
                                      Text("Opens ${snapshot.data.results[index].annadhanamTimings}"),
                                      SizedBox(width:10),
                                      Icon(Icons.arrow_drop_down_outlined),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            /*Container(
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
                            )*/
                            ((index+1) == snapshot.data.results.length) ? "" : Divider(),
                          ],
                        ),
                      ),
                    ],
                  ),
                );


                /*return ListTile(
                  title: Column(
                    children: [
                      Text(snapshot.data.results[index].templeName),
                      Text(snapshot.data.results[index].templeDescription),
                      Text(snapshot.data.results[index].templeAddress),
                    ],
                  ),
                );*/
              },
            );
          }
          else{
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blue,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
              ),
            );
          }
        },
      ),

      /*body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  color: Color(0xfffafafa),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text("Your Location"),
                          Text("Banashankari"),
                        ],
                      ),
                      SizedBox(width: 30),
                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("3 Temples", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      )),
                      Row(
                        children: [
                          Icon(Icons.filter_alt_outlined),
                          Text("Sort"),
                        ],
                      ),
                    ],
                  ),
                ),

                StreamBuilder(
                  stream: templesBloc.allTemplesList,
                  builder: (context, AsyncSnapshot<TemplesModel>snapshot){
                    if(snapshot.hasData){
                      return ListView.builder(
                        itemCount: snapshot.data.results.length,
                        itemBuilder: (context, index){
                          *//*return Column(
                            children: [
                              Text(snapshot.data.results[index].templeName),
                              Text(snapshot.data.results[index].templeDescription),
                              Text(snapshot.data.results[index].templeAddress),
                            ],
                          );*//*

                          return ListTile(
                            title: Column(
                              children: [
                                Text(snapshot.data.results[index].templeName),
                                Text(snapshot.data.results[index].templeDescription),
                                Text(snapshot.data.results[index].templeAddress),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),*/
      bottomNavigationBar: BottomNav(),
    );
  }
}





/*class Temples extends StatelessWidget {
  static const routeName = '/temples';

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
                Container(
                  color: Color(0xfffafafa),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text("Your Location"),
                          Text("Banashankari"),
                        ],
                      ),
                      SizedBox(width: 30),
                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("3 Temples", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      )),
                      Row(
                        children: [
                          Icon(Icons.filter_alt_outlined),
                          Text("Sort"),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(TempleDetails.routeName);
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/images/temple.jpeg",
                            width: double.infinity,
                            height: 150,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sri Venkateswara Maha Vishnu Temple", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
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
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text("2 Kms")
                                      ],
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
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.4,
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Image.asset("assets/images/temple.jpeg",
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sri Venkateswara Maha Vishnu Temple", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
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
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text("2 Kms")
                                    ],
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}*/


