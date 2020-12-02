import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            child: Container(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/temple.jpeg",
                    width: 350,
                    height: 150,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height:10),
                        Text("Navrathri/Dussera Festival", style: TextStyle(fontSize: 16)),
                        SizedBox(height:10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date", style: TextStyle(color: Colors.grey)),
                                Text("19-11-2020")
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Time", style: TextStyle(color: Colors.grey)),
                                Text("02:00PM to 09:00PM")
                              ],
                            )
                          ],
                        ),
                        SizedBox(height:10),
                        Text("Location", style: TextStyle(color: Colors.grey)),
                        Text("Ring road, Banashankari"),
                        SizedBox(height:15),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: (){
                              //Navigator.pushNamed(context,'/otp');
                            },
                            color: Color(0xfffbc40c),
                            child: Text('Book Now'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
