import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fest/entity/user.dart';
import 'package:flutter_fest/entity/user_preferences.dart';
import 'package:flutter_fest/view/compoents/appbar.dart';
import 'package:flutter_fest/view/compoents/bottombar.dart';
import 'package:flutter_fest/view/compoents/drawer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'compoents/button_widget.dart';
import 'compoents/numbers_widget.dart';
import 'compoents/profile_widget.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final int index = 4;

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const Mydrawer(),
      appBar: const myAppBar(text: 'Profile'),
      bottomNavigationBar: Bottombar(
        indexmenu: index,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(height: size.height * 0.03),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          const NumbersWidget(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Rozetlerim",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 28),
              textAlign: TextAlign.left,
            ),
          ),
          Center(
            child: Stack(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 85)),
                    Center(
                      child: Image.network(
                          'https://i.hizliresim.com/36lcrcj.png',
                          width: size.width * 0.2),
                    ),
                    const SizedBox(width: 3),
                    Center(
                      child: Image.network(
                          'https://i.hizliresim.com/i9a8t5k.png',
                          width: size.width * 0.14),
                    ),
                    const SizedBox(width: 13),
                    Center(
                      child: Image.network(
                          'https://i.hizliresim.com/l02zkk5.png',
                          width: size.width * 0.142),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Eşya ilerlemesi",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 28),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 60,
              animation: true,
              leading: Image.network('https://i.hizliresim.com/36lcrcj.png',
                  width: size.width * 0.075),
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.5,
              animateFromLastPercent: true,
              addAutomaticKeepAlive: true,
              center: Text("55.7%"),
              isRTL: true,
              progressColor: Color(0xFF7aa1fc),
              maskFilter: MaskFilter.blur(BlurStyle.solid, 3),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Bağış ilerlemesi",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 28),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 60,
              animation: true,
              leading: Image.network('https://i.hizliresim.com/i9a8t5k.png',
                  width: size.width * 0.05),
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.77,
              animateFromLastPercent: true,
              center: Text("77.7%"),
              isRTL: true,
              addAutomaticKeepAlive: true,
              progressColor: Color(0xFF7aa1fc),
              maskFilter: MaskFilter.blur(BlurStyle.solid, 3),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adım ilerlemesi",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 28),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 60,
              animation: true,
              leading: Image.network('https://i.hizliresim.com/l02zkk5.png',
                  width: size.width * 0.05),
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.1,
              addAutomaticKeepAlive: true,
              animateFromLastPercent: true,
              center: Text("10.0%"),
              isRTL: true,
              progressColor: Color(0xFF7aa1fc),
              maskFilter: MaskFilter.blur(BlurStyle.solid, 3),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Kurye Çağır',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hakkında',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  buildAppBar(BuildContext context) {}
}

class Alert {}
