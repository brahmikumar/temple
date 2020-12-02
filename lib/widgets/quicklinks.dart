import 'package:aum/screens/temples.dart';
import 'package:flutter/material.dart';

class QuickLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 180.0,
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            quickLinkItem("assets/images/temple.jpeg", "Temples", context),
            quickLinkItem("assets/images/homam.jpeg", "Homams & Pooja", context),
            quickLinkItem("assets/images/poojari.jpeg", "Poojari", context),
            quickLinkItem("assets/images/shop.jpeg", "Shop", context),
            quickLinkItem("assets/images/astrologer.jpeg", "Astrologer", context),
            quickLinkItem("assets/images/live.jpeg", "Live Darshan", context),
            quickLinkItem("assets/images/aum-learning.jpeg", "AUM Learning", context),
          ],
        )
    );
  }
}

Widget quickLinkItem(String img, String label, BuildContext context) {
  return Container(
    width: 120,
    padding: EdgeInsets.only(right: 15),
    child: InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Temples.routeName);
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              img,
              width: 120,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}

