import 'package:flutter/material.dart';
import 'package:flutterr_fest/view/compoents/appbar.dart';
import 'package:flutterr_fest/view/compoents/bottombar.dart';
import 'package:flutterr_fest/view/compoents/button_widget.dart';
import 'package:flutterr_fest/view/compoents/profile_widget.dart';

class kisi extends StatelessWidget {
  final String imagepath;
  final String ad;
  final String mail;
  final String about;
  final String soyad;

  @override
  const kisi({
    Key? key,
    required this.imagepath,
    required this.ad,
    required this.about,
    required this.mail,
    required this.soyad,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        text: (ad + ' ' + soyad),
      ),
      bottomNavigationBar: const Bottombar(
        indexmenu: 1,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 10,
          ),
          ProfileWidget(
            imagePath: imagepath,
            onClicked: () {},
          ),
          const SizedBox(height: 24),
          buildName(ad, mail),
          const SizedBox(height: 24),
          const SizedBox(height: 48),
          buildAbout(about),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
        ],
      ),
    );
  }

  Widget buildName(String ad, String mail) => Column(
        children: [
          Text(
            ad + ' ' + soyad,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            mail,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Bağış yap',
        onClicked: () {
          // Kurye çağırma butonu olacak ona göre kuryeyi çağırcak.
        },
      );

  Widget buildAbout(String about) => Container(
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
              about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
