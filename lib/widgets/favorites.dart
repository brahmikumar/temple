import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../screens/temples.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child:
      Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(15),
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(Temples.routeName);
              },
              child: Card(
                child: Container(
                  width: 180,
                  //padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/temple.jpeg",
                        width: 200,
                        height: 100,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Text("Sri Venkateshwara Maha Vishnu Temple", style: TextStyle(
                          fontSize: 15,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Modara", style: TextStyle(
                                  fontSize: 12,
                                )),
                                Text("1.5 Km", style: TextStyle(
                                  fontSize: 12, color: Colors.grey,
                                ))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RatingBarIndicator(
                                  rating: 5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 14.0,
                                  direction: Axis.horizontal,
                                ),
                                Text("234 Ratings", style: TextStyle(
                                  fontSize: 12, color: Colors.indigo,
                                ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(Temples.routeName);
              },
              child: Card(
                child: Container(
                  width: 180,
                  //padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/poojari.jpeg",
                        width: 200,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Text("Babu Gurukal", style: TextStyle(
                          fontSize: 15,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Modara", style: TextStyle(
                                  fontSize: 12,
                                )),
                                Text("1.5 Km", style: TextStyle(
                                  fontSize: 12, color: Colors.grey,
                                ))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RatingBarIndicator(
                                  rating: 3,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 14.0,
                                  direction: Axis.horizontal,
                                ),
                                Text("124 Ratings", style: TextStyle(
                                  fontSize: 12, color: Colors.indigo,
                                ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(Temples.routeName);
              },
              child: Card(
                child: Container(
                  width: 180,
                  //padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/poojabox.jpeg",
                        width: 200,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Text("Deepavali Pooja Box", style: TextStyle(
                          fontSize: 15,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rs. 3,106", style: TextStyle(
                                  fontSize: 12,
                                )),
                                Text("", style: TextStyle(
                                  fontSize: 12, color: Colors.grey,
                                ))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RatingBarIndicator(
                                  rating: 5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 14.0,
                                  direction: Axis.horizontal,
                                ),
                                Text("124 Ratings", style: TextStyle(
                                  fontSize: 12, color: Colors.indigo,
                                ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      )
    );
  }
}

