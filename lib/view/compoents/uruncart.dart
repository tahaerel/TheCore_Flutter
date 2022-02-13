import 'package:flutter/material.dart';
import 'package:flutterr_fest/view/compoents/textstyle.dart';
import 'package:flutterr_fest/view/detay_page.dart';

class Urun extends StatelessWidget {
  final String id;
  final String category;
  final String title;
  final String duration;
  final String imagePath;
  final String ad;
  final String soyad;
  final String tel;
  final String adres;
  final String description;

  Urun({
    required this.id,
    required this.category,
    required this.title,
    required this.duration,
    required this.imagePath,
    required this.description,
    required this.tel,
    required this.adres,
    required this.ad,
    required this.soyad,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 7.0,
      ),
      child: Container(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetayPage(
                          title: title,
                          imagepath: imagePath,
                          description: description,
                          ad: ad,
                          soyad: soyad,
                          tel: tel,
                          adres: adres,
                        )));
          },
          borderRadius: BorderRadius.circular(15.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 2.0,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.network(
                    imagePath,
                    height: 150.0,
                    width: 180.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 180.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: kTinyTitleTextStyle,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: kNormalTitleTextStyle,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                size: 15.0,
                                color: Colors.black54,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '$duration min',
                                style: const TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.black54,
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
