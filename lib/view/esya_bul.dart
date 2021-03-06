import 'package:flutter/material.dart';
import 'package:flutterr_fest/view/compoents/appbar.dart';
import 'package:flutterr_fest/view/compoents/background3.dart';
import 'package:flutterr_fest/view/compoents/bottombar.dart';
import 'package:flutterr_fest/view/compoents/drawer.dart';
import 'package:flutterr_fest/view/compoents/uruncart.dart';

class EsyaPage extends StatefulWidget {
  const EsyaPage({Key? key}) : super(key: key);

  @override
  _EsyaPageState createState() => _EsyaPageState();
}

class _EsyaPageState extends State<EsyaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const myAppBar(
          text: 'Esya Bul',
        ),
        drawer: const Mydrawer(),
        bottomNavigationBar: const Bottombar(indexmenu: 0),
        body: SingleChildScrollView(
          child: Background3(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EsyaPage()));
                        },
                        child: const Text('Ortapedi'),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          onPrimary: const Color(0xFF7aa1fc),
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EsyaPage()));
                        },
                        child: const Text('    ????itme   '),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          onPrimary: const Color(0xFF7aa1fc),
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EsyaPage()));
                        },
                        child: const Text('   G??rme   '),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          onPrimary: const Color(0xFF7aa1fc),
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 12),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Urun(
                        id: '10',
                        category: 'Ortapedi',
                        title: 'Y??r??te??',
                        ad: 'Onur',
                        soyad: 'Sar??',
                        adres:
                            'Mahmut Pa??a Mahallesi Selvi Sokak No:7 Daire:6 \n Ey??p/??stanbul',
                        tel: '541 943 34 52',
                        duration: '10 ',
                        description:
                            'Y??r??te?? veya y??r??me ??er??evesi, ??o??unlukla ya??a ba??l?? fiziksel k??s??tlamalar nedeniyle, y??r??rken denge veya dengeyi korumak i??in ek deste??e ihtiya?? duyan engelli veya zay??f insanlar i??in bir ara??t??r.',
                        imagePath: 'https://i.hizliresim.com/8qbvztn.png',
                      ),
                      Urun(
                        id: '11',
                        adres:
                            'Gaziosmanpa??a Mahallesi Selvi Sokak No:7 Daire:6 \n Ey??p/??stanbul',
                        category: 'Ortapedi',
                        title: 'Sandalye',
                        ad: 'Taha',
                        soyad: 'Erel',
                        tel: '543 345 54 32',
                        duration: '60',
                        imagePath: 'https://i.hizliresim.com/8euvotq.png',
                        description:
                            'Daha iyi bir modelini sat??n ald??????m i??in bunu ihtiyac?? olan birine ba??????lamak istiyorum. Hi??bir  sorunu yoktur.',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Urun(
                        id: '12',
                        adres:
                            'denemedeneme mah deneme sok no deneme daire deneme',
                        category: '????itme',
                        title: 'Kulakl??k',
                        ad: 'asdasd',
                        soyad: 'adasd',
                        tel: 'asdasd',
                        duration: '700',
                        imagePath:
                            'http://gumusisitmecihazlari.com/upload/img/yazi_1592f4041dc576.jpg',
                        description: 'asdasdadasd',
                      ),
                      Urun(
                        id: '10',
                        adres:
                            'denemedeneme mah deneme sok no deneme daire deneme',
                        category: 'G??rme',
                        title: 'Ask??l??k',
                        ad: 'asdasd',
                        soyad: 'adas',
                        tel: 'asda',
                        duration: '500',
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
                      Urun(
                        id: '14',
                        adres:
                            'denemedeneme mah deneme sok no deneme daire deneme',
                        category: 'G??rme',
                        title: 'We-Walk',
                        ad: 'asd',
                        soyad: 'asdas',
                        tel: 'asd',
                        duration: '56.5',
                        description: 'asdasdadasd',
                        imagePath:
                            'https://www.zorlu.com.tr/akillihayat2030/assets/images/blog/wewalk_07_DC6A8296.jpg',
                      ),
                      Urun(
                        id: '15',
                        category: 'Ortapedi',
                        title: 'Sandalye',
                        ad: 'asdas',
                        soyad: 'asdas',
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
        ));
  }
}
