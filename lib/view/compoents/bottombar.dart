import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fest/view/esya_bul.dart';
import 'package:flutter_fest/view/fon_page.dart';
import 'package:flutter_fest/view/index.dart';
import 'package:flutter_fest/view/profile_page.dart';

class Bottombar extends StatelessWidget {
  final int indexmenu;
  const Bottombar({
    Key? key,
    required this.indexmenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.grey.withOpacity(0.1),
        buttonBackgroundColor: const Color(0xFF7aa1fc),
        height: 50,
        items: const <Widget>[
          Icon(Icons.search, size: 28, color: Colors.blue),
          Icon(Icons.money_off_outlined, size: 26, color: Colors.blue),
          Icon(Icons.home, size: 26, color: Colors.blue),
          Icon(Icons.chat_bubble_outline_sharp, size: 26, color: Colors.blue),
          Icon(Icons.person_outline_rounded, size: 26, color: Colors.blue),
        ],
        animationDuration: const Duration(microseconds: 200),
        index: indexmenu,
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("Current Index is $index");
          switch (index) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EsyaPage()));
              break;
            case 1:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => fonPage()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => anaSayfa()));

              break;
            case 3:
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
          }
        },
      ),
    );
  }
}
