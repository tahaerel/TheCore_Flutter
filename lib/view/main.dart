import 'package:flutter/material.dart';
import 'package:flutterr_fest/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.fallback(),
      home: const LoginScreen(),
    );
  }
}
