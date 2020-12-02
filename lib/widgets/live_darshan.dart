import 'package:flutter/material.dart';

class LiveDarshan extends StatelessWidget {
  final data = [
    {
      "company": "Apple",
      "description": "job description",
      "employmentType": "",
      "id": 1,
      "location": "Singapore",
      "position": "Software Engineer",
      "skillsRequired": []
    },
    {
      "company": "Google",
      "description": "job description",
      "employmentType": "",
      "id": 2,
      "location": "Hong Kong",
      "position": "Software Engineering Manager",
      "skillsRequired": []
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            RenderLiveDarshan("assets/images/upcoming_events_1.jpeg", "Sri Sathyanarayana", "LIVE",),
            RenderLiveDarshan("assets/images/upcoming_events_2.jpeg", "Navarathri/Dhussera Festival", "Start at 6:00PM",),
            RenderLiveDarshan("assets/images/upcoming_events_3.jpeg", "Vishnu Shahashranama", "30_Nov-2020 08:00AM OnWards",),
          ],
        )
        /*child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index){
            return RenderLiveDarshan("assets/images/upcoming_events_1.jpeg", data[index].loction, "LIVE");
          },
        )*/
    );
  }
}

Widget RenderLiveDarshan(String img, String title, String info){
  return Card(
    child: Container(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(img,
                color: Color.fromRGBO(50, 50, 50, 0.6),
                colorBlendMode: BlendMode.modulate,
                width: 200,
                height: 150,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                child: Icon(Icons.play_circle_outline, color: Colors.white, size: 100),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:10),
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height:10),
                (info == "LIVE") ?
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        color: Color(0xffa10e1b),
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                        child: Row(
                          children: [
                            Icon(Icons.circle, size: 10, color: Colors.white),
                            SizedBox(width:8),
                            Text("Live Now", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                :
                  Text(info, style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}




