import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fest/entity/model.dart';
import 'package:flutter_fest/view/bagis.dart';
import 'package:flutter_fest/view/compoents/Drawer.dart';
import 'package:flutter_fest/view/compoents/appbar.dart';
import 'package:flutter_fest/view/compoents/bacground2.dart';
import 'package:flutter_fest/view/compoents/bottombar.dart';
import 'package:flutter_fest/view/esya_bul.dart';
import 'package:flutter_fest/view/fon_page.dart';

class anaSayfa extends StatefulWidget {
  anaSayfa({Key? key}) : super(key: key);

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Mydrawer(),
      appBar: const myAppBar(
        text: 'Anasafya',
      ),
      bottomNavigationBar: Bottombar(
        indexmenu: index,
      ),
      body: Background2(
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Kategori Seçiniz",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA),
                      fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EsyaPage()));
                  },
                  child: const Text('  EŞYA BUL  '),
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    onPrimary: Colors.white,
                    primary: const Color(0xFF7aa1fc),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const fonPage()));
                  },
                  child: const Text(' FONLAMA '),
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    onPrimary: Colors.white,
                    primary: const Color(0xFF7aa1fc),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BagisPage()));
                  },
                  child: const Text('    BAĞIŞ    '),
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
      ),
    );
  }
}
