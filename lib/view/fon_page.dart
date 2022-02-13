import 'package:flutter/material.dart';
import 'package:flutter_fest/view/compoents/kisi_cart.dart';
import 'package:flutter_fest/view/compoents/uruncart.dart';

import 'compoents/Drawer.dart';
import 'compoents/appbar.dart';
import 'compoents/bacground2.dart';
import 'compoents/background3.dart';
import 'compoents/bottombar.dart';
import 'esya_bul.dart';

class fonPage extends StatefulWidget {
  const fonPage({Key? key}) : super(key: key);

  @override
  _fonPageState createState() => _fonPageState();
}

class _fonPageState extends State<fonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppBar(
        text: 'Fonlama!',
      ),
      drawer: const Mydrawer(),
      bottomNavigationBar: const Bottombar(indexmenu: 1),
      body: SingleChildScrollView(
        child: Background3(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Kisiler(
                      id: '10',
                      category: 'Ortapedi',
                      title: 'Yürüteç',
                      ad: 'Onur',
                      soyad: 'Sarı',
                      mail: 'onurssari@gmail.com',
                      adres:
                          'Mahmut Paşa Mahallesi Selvi Sokak No:7 Daire:6 \n Eyüp/İstanbul',
                      tel: '541 943 34 52',
                      duration: '10 ',
                      description:
                          'Yürüteç veya yürüme çerçevesi, çoğunlukla yaşa bağlı fiziksel kısıtlamalar nedeniyle, yürürken denge veya dengeyi korumak için ek desteğe ihtiyaç duyan engelli veya zayıf insanlar için bir araçtır.',
                      imagePath: 'https://i.hizliresim.com/gt2l085.jfif',
                    ),
                    Kisiler(
                      id: '11',
                      adres:
                          'Gaziosmanpaşa Mahallesi Selvi Sokak No:7 Daire:6 \n Eyüp/İstanbul',
                      category: 'Taha Erel',
                      title: 'Dilenci',
                      ad: 'Taha',
                      soyad: 'Erel',
                      tel: '543 345 54 32',
                      duration: '60',
                      imagePath: 'https://i.hizliresim.com/lqlcdik.png',
                      description: '',
                      mail:
                          'Daha iyi bir modelini satın aldığım için bunu ihtiyacı olan birine bağışlamak istiyorum. Hiçbir  sorunu yoktur.',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Kisiler(
                      id: '12',
                      adres:
                          'denemedeneme mah deneme sok no deneme daire deneme',
                      category: 'İşitme',
                      title: 'Kulaklık',
                      ad: 'asdasd',
                      soyad: 'adasd',
                      tel: 'asdasd',
                      duration: '700',
                      mail: 'asda',
                      imagePath:
                          'http://gumusisitmecihazlari.com/upload/img/yazi_1592f4041dc576.jpg',
                      description: 'asdasdadasd',
                    ),
                    Kisiler(
                      id: '10',
                      adres:
                          'denemedeneme mah deneme sok no deneme daire deneme',
                      category: 'Görme',
                      title: 'deneme',
                      ad: 'asdasd',
                      soyad: 'adas',
                      tel: 'asda',
                      duration: '500',
                      mail: 'asdasd',
                      imagePath:
                          'https://cdn.dsmcdn.com/ty175/product/media/images/20210914/19/129953074/142352341/1/1_org_zoom.jpg',
                      description: 'asdasdadasd',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Kisiler(
                      id: '14',
                      adres:
                          'denemedeneme mah deneme sok no deneme daire deneme',
                      category: 'Görme',
                      title: 'We-Walk',
                      ad: 'asd',
                      soyad: 'asdas',
                      tel: 'asd',
                      mail: 'asda',
                      duration: '56.5',
                      description: 'asdasdadasd',
                      imagePath:
                          'https://www.zorlu.com.tr/akillihayat2030/assets/images/blog/wewalk_07_DC6A8296.jpg',
                    ),
                    Kisiler(
                      id: '15',
                      category: 'Ortapedi',
                      title: 'Sandalye',
                      ad: 'asdas',
                      soyad: 'asdas',
                      mail: 'asdasd',
                      adres:
                          'denemedeneme mah deneme sok no deneme daire deneme',
                      tel: 'asda',
                      duration: '900',
                      description: 'asdasdadasd',
                      imagePath:
                          'https://cdn2.lazimbana.com/product/2021/01/14/3079640/gmc-akulu-tekerlekli-sandalye-akulu-araba-elektrikli-sandalye-eng-1-1610629575.jpg',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
