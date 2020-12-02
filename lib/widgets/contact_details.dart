import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';

class ContactDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(10),
      color: Color(0xffebeeff),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SizedBox(height:20),
          Text("Contact Details", style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          )),
          SizedBox(height:20),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Temple", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
                SizedBox(height:10),
                InkWell(
                  onTap: (){
                    MapsLauncher.launchCoordinates(37.4220041, -122.0862462);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 5),
                      Text("100 Temple Rd, Banashankari")
                    ],
                  ),
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: (){
                    launch("tel:+91 85213456789");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text("+91 85213456789")
                    ],
                  ),
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: (){
                    launch("mailto:ceo_my_temple@gmail.com");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.mail_outline),
                      SizedBox(width: 10),
                      Text("ceo_my_temple@gmail.com")
                    ],
                  ),
                ),
                SizedBox(height:20),
                Text("Office", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
                SizedBox(height:10),
                InkWell(
                  onTap: (){
                    //MapsLauncher.launchCoordinates(37.4220041, -122.0862462);
                    MapsLauncher.launchQuery('Banashankari');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 10),
                      Text("100 Temple Rd, Banashankari")
                    ],
                  ),
                ),
                SizedBox(height:10),
                InkWell(
                  onTap: (){
                    launch("tel:+91 85213456789");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text("+91 85213456789")
                    ],
                  ),
                ),
                SizedBox(height:10),
                InkWell(
                  onTap: (){
                    launch("mailto:ceo_my_temple@gmail.com");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.mail_outline),
                      SizedBox(width: 10),
                      Text("ceo_my_temple@gmail.com")
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
