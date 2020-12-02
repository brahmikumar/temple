import 'package:flutter/material.dart';

class UpcomingEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            RenderUpcomingEvents("assets/images/upcoming_events_1.jpeg", "Sri Sathyanarayana Swamy Vratham", "25-11-2020", "10:00 AM"),
            RenderUpcomingEvents("assets/images/upcoming_events_2.jpeg", "Navarathri/Dhussera Festival", "27-11-2020", "10:00 AM"),
            RenderUpcomingEvents("assets/images/upcoming_events_3.jpeg", "Vishnu Shahashranama", "28-11-2020", "10:00 AM"),
          ],
        )
    );
  }
}

Widget RenderUpcomingEvents(String img, String title, String date, String time){
  return Card(
    child: Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(img,
            width: 300,
            height: 150,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:10),
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Date", style: TextStyle(color: Colors.grey)),
                        Text(date)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Time", style: TextStyle(color: Colors.grey)),
                        Text(time)
                      ],
                    )
                  ],
                ),
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
  );
}




