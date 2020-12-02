import 'package:flutter/material.dart';

Widget FamilyMember(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(width: 1, color: Colors.grey[350])),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Lakshmi Jayakumaran',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: SizedBox(
                  width: 60,
                  height: 20,
                  child: ButtonTheme(
                    child: OutlineButton(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.edit,
                            size: 16,
                          ),
                          Text('Edit')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date of Birth',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                      Text('12-SEP-1983',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Birth Star',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                      Text('Vishaka',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500))
                    ],
                  )),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Birth Place',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    Text('Colombo, Srilanka',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Relationship',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    Text('Spouse',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500))
                  ],
                )),
          ],
        ),
      ],
    ),
  );
}
