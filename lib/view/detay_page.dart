import 'package:flutter/material.dart';
import 'package:flutterr_fest/view/compoents/appbar.dart';
import 'package:flutterr_fest/view/compoents/detay.dart';

class DetayPage extends StatelessWidget {
  final String title;
  final String imagepath;
  final String description;
  final String ad;
  final String soyad;
  final String adres;
  final String tel;
  const DetayPage(
      {Key? key,
      required this.title,
      required this.imagepath,
      required this.description,
      required this.ad,
      required this.soyad,
      required this.adres,
      required this.tel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        text: title,
      ),
      body: Detay(
        image: imagepath,
        title: title,
        description: description,
        ad: ad,
        soyad: soyad,
        tel: tel,
        adres: adres,
      ),
    );
  }
}
