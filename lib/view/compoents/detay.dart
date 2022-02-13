import 'dart:ui';

import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fest/view/compoents/bottombar.dart';
import 'package:flutter_fest/view/compoents/textstyle.dart';

class Detay extends StatelessWidget {
  final String title;
  final String image;
  final String ad;
  final String soyad;
  final String tel;
  final String description;
  final String adres;

  const Detay(
      {required this.title,
      required this.image,
      required this.ad,
      required this.adres,
      required this.description,
      required this.soyad,
      required this.tel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottombar(
        indexmenu: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    shape: BoxShape.rectangle,
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(25, 25)),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 75,
                    ),
                  ),
                  child: Image.network(
                    image,
                    height: 150.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        ' Açıklama',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          shape: BoxShape.rectangle,
                          borderRadius:
                              const BorderRadius.all(Radius.elliptical(25, 25)),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            description,
                            style: const TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        ' Kişi  Bilgileri',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          shape: BoxShape.rectangle,
                          borderRadius:
                              const BorderRadius.all(Radius.elliptical(25, 25)),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            ad + ' ' + soyad + '\n' + tel + '\n' + adres,
                            style: const TextStyle(
                                fontSize: 16,
                                height: 1.4,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            FancySnackbar.showSnackbar(
                              context,
                              snackBarType: FancySnackBarType.success,
                              title: " İletişime Geçildi",
                              message: "Mesaj isteğiniz karşı tarafa iletildi!",
                              duration: 3,
                              onCloseEvent: () {},
                            );
                          },
                          child: const Text('   İletişime Geç!   '),
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            onPrimary: Colors.white,
                            primary: const Color(0xFF7aa1fc),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
