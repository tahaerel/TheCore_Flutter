import 'package:flutter/material.dart';
import 'package:flutterr_fest/view/profile_page.dart';

class myAppBar extends StatelessWidget with PreferredSizeWidget {
  final String text;
  const myAppBar({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      backgroundColor: const Color(0xFF7aa1fc),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.person),
          tooltip: 'Open Profile Menu',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
      ],
    );
  }
}
