import 'package:flutter/material.dart';
import '../aum_icons.dart';
import '../menu.dart';
import '../bottomnavigation.dart';
import './temple_details.dart';









class Temples extends StatelessWidget {
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
}


