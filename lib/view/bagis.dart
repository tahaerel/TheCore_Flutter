import 'package:flutter/material.dart';

import 'compoents/Drawer.dart';
import 'compoents/appbar.dart';
import 'compoents/bacground2.dart';
import 'compoents/bottombar.dart';

class BagisPage extends StatefulWidget {
  const BagisPage({Key? key}) : super(key: key);

  @override
  _BagisPageState createState() => _BagisPageState();
}

class _BagisPageState extends State<BagisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppBar(
        text: 'Bağışçı!',
      ),
      drawer: const Mydrawer(),
      bottomNavigationBar: const Bottombar(indexmenu: 0),
      body: Background2(
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Bağış türü seçiniz.",
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
                  onPressed: () {},
                  child: const Text('  EŞYA   '),
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
                  onPressed: () {},
                  child: const Text('   FON   '),
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
                  child: const Text('   ADIM   '),
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
