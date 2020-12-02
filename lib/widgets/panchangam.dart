import 'package:aum/screens/panchangam_calendar.dart';
import 'package:flutter/material.dart';

class  Pnchangam extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child:
      InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(PanchangamCalendar.routeName);
        },
        child: Card(
          color: Color(0XFFFFFFF6),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("02-10-2020, Monday", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                    Text("Sarvari", style: TextStyle(
                      //fontSize: 18
                    )),
                    Text("Sama Nokku Nal", style: TextStyle(
                        fontSize: 16
                    ))
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex:1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text("Rahu Kalam", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                              Text("3:00 Am - 4:30 Am", style: TextStyle(
                                //fontSize: 18
                              )),
                              SizedBox(height:15),
                              Text("Yamagandam", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                              Text("3:00 Am - 4:30 Am", style: TextStyle(
                                //fontSize: 18
                              )),],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Nalla Neram", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                              Text("Morning: 3:00 - 4:30", style: TextStyle(
                                //fontSize: 18
                              )),
                              Text("Evening: 4:45 - 5:45", style: TextStyle(
                                  fontSize: 16
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0XFFFBFCE0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Icon(Icons.wb_sunny_outlined, color: Color(0XFFA10E1B),),
                            Text("  Sunrise: ", style: TextStyle(
                              //fontSize: 16,
                              color: Color(0XFFA10E1B),
                            )),
                            Text("6:31 AM", style: TextStyle(
                              //fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFFA10E1B),
                            ))
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                            Icon(Icons.wb_sunny_outlined, color: Color(0XFFA10E1B),),
                            Text("  Sunset: ", style: TextStyle(
                              //fontSize: 16,
                              color: Color(0XFFA10E1B),
                            )),
                            Text("6:00 PM", style: TextStyle(
                              //fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFFA10E1B),
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
