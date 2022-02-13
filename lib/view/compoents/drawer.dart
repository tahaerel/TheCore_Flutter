import 'package:flutter/material.dart';
import 'package:flutterr_fest/view/esya_bul.dart';

import '../login.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF7aa1fc),
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  FlutterLogo(
                    size: 100,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            tileColor: const Color(0xFF839fe4),
            leading: const Icon(
              Icons.logout,
              size: 56.0,
            ),
            title: const Text('Çıkış yap'),
            subtitle: const Text('Çıkmak için tıklayın'),
            trailing: const Icon(Icons.logout_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
          ListTile(
            tileColor: const Color(0xFF839fe4),
            leading: const Icon(
              Icons.accessible_forward_sharp,
              size: 56.0,
            ),
            title: const Text('Esya Bul'),
            subtitle: const Text('İhtiyacın olan eşyayı bul'),
            trailing: const Icon(Icons.find_in_page_outlined),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EsyaPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
