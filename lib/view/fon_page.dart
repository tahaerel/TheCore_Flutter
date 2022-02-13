import 'package:flutter/material.dart';
import 'package:flutterr_fest/view/compoents/kisi_cart.dart';
import 'package:flutterr_fest/view/compoents/uruncart.dart';

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
                      category: 'Görme engelli',
                      title: 'Onur Sarı',
                      ad: 'Onur',
                      soyad: 'Sarı',
                      mail: 'onurssari@gmail.com',
                      adres:
                          'Mahmut Paşa Mahallesi Selvi Sokak No:7 Daire:6 \n Eyüp/İstanbul',
                      tel: '541 943 34 52',
                      duration: '10 ',
                      description:
                          '1921 yılında trafik kazası geçirmesi nedeniyle görme yetisini kaybettim. Yeni çıkan teknolojiler sayesinde Deneysel tedavi keşfettim ve bunun için paraya ihtiyacım var lütfen bana yardımcı olur musunuz? ',
                      imagePath: 'https://i.hizliresim.com/gt2l085.jfif',
                    ),
                    Kisiler(
                      id: '11',
                      adres:
                          'Gaziosmanpaşa Mahallesi Selvi Sokak No:7 Daire:6 \n Eyüp/İstanbul',
                      category: 'SMA hastası',
                      title: 'Ayşe nur Elfida',
                      ad: 'Ayşe Nur',
                      soyad: 'Elfida',
                      tel: '543 345 54 43',
                      duration: '60',
                      imagePath:
                          'https://iyikigormusum.com/public/uploads/files/foto1(1).jpg',
                      description:
                          'Bilindiği gibi, SMA hastası çocukların tedavisi konusundaki sorunlar devam ediyor. Bu sorunların sosyal devlet ilkesi çerçevesinde, kapsayıcı bir biçimde çözümlenmesi için ivedilikle düzenlemeler yapılması gereklilik arz etmektedir. Bu konuda yetkililere yapılan çağrıların toplu şekilde, pek çok kuruluşun katılımı ile dile getirilmesi, çözüm beklentisinin dikkate alınması için çok önemlidir.',
                      mail: ' aysenurelfida@gmail.com',
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
                      category: 'İşitme Engelli',
                      title: 'Mahmut Tuncer',
                      ad: 'Mahmut',
                      soyad: 'Tuncer',
                      tel: '541 435 23 23',
                      duration: '30',
                      mail: 'tuncermahmut12@gmail.com',
                      imagePath:
                          'https://iyikigormusum.com/public/uploads/files/foto2(4).jpg',
                      description:
                          'Kulaklarımda yüzde 90 duyma kaybı olduğu için işitme cihazı almam gerekiyor fakat maddi durumum olmadığı için alamıyorum lütfen abna yardım edin.',
                    ),
                    Kisiler(
                      id: '10',
                      adres:
                          'denemedeneme mah deneme sok no deneme daire deneme',
                      category: 'Yürüme engelli',
                      title: 'Eşref Gürbüz',
                      ad: 'Eşref',
                      soyad: 'Gürbüz',
                      tel: 'asda',
                      duration: '500',
                      mail: 'asdasd',
                      imagePath:
                          'https://www.kastamonuilkhaber.com/images/haberler/2021/07/tekerlekli_sandalye_hayaline_kavusan_engelli_erdemin_yuzu_bayramda_guldu_h22566.jpg',
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
                      category: 'kanser',
                      title: 'Yavuz Bingöl',
                      ad: 'Yavuz',
                      soyad: 'Bingöl',
                      tel: 'asd',
                      mail: 'asda',
                      duration: '56.5',
                      description: 'asdasdadasd',
                      imagePath: 'https://i.hizliresim.com/9p5ne1d.jfif',
                    ),
                    Kisiler(
                      id: '15',
                      category: 'Yürüme engelli',
                      title: 'Ufuk Demirel',
                      ad: 'Ufuk',
                      soyad: 'Demirel',
                      mail: 'asdasd',
                      adres:
                          'denemedeneme mah deneme sok no deneme daire deneme',
                      tel: 'asda',
                      duration: '900',
                      description: 'asdasdadasd',
                      imagePath: 'https://i.hizliresim.com/98l2y58.jfif',
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
