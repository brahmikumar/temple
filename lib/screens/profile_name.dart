import 'package:flutter/material.dart';

Widget ProfileDetail(BuildContext context)  {
  return Container(
    color:Color(0xffFAFAFA),
    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
    margin: EdgeInsets.only(top: 10),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom:10.0),
          child: Text(
            'Lakshmi Jayakumaran',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(fontSize: 12,color: Colors.grey[600]),
                      ),
                      Text('+94 9900881100',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ],
                  )),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 12,color: Colors.grey[600]),
                      ),
                      Text('lakshmi.jayakumaran@gmail.com',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500))
                    ],
                  )),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(fontSize: 12,color: Colors.grey[600]),
                    ),
                    Text('427/25 Samagi Mawatha, Hokandara\n Colombo 10030',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ],
                )),
          ],
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Expanded(
                  flex:2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date of Birth',
                        style: TextStyle(fontSize: 12,color: Colors.grey[600]),
                      ),
                      Text('12-SEP-1983',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ],
                  )),
              Expanded(
                  flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Birth Star',
                        style: TextStyle(fontSize: 12,color: Colors.grey[600]),
                      ),
                      Text('Vishaka',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500))
                    ],
                  )),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                  flex:2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Birth Place',
                        style: TextStyle(fontSize: 12,color: Colors.grey[600]),
                      ),
                      Text('Colombo, Srilanka',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ],
                  )),
              Expanded(
                  flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gothram',
                        style: TextStyle(fontSize: 12,color: Colors.grey[600]),
                      ),
                      Text('Kaundinya',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500))
                    ],
                  )),
            ],
          ),
        ),
      ],
    ),
  );

}
