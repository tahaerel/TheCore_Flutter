import 'package:flutter/material.dart';

class mainbutton extends StatefulWidget {
  final String text;
  final Function? pressed;
  const mainbutton({
    Key? key,
    required this.text,
    this.pressed,
  }) : super(key: key);

  @override
  State<mainbutton> createState() => _mainbuttonState();
}

class _mainbuttonState extends State<mainbutton> {
  final String text = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          onPrimary: Colors.white,
          primary: const Color(0xFF7aa1fc),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
      ),
    );
  }
}
