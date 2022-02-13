import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fest/entity/user.dart';
import 'package:flutter_fest/entity/user_preferences.dart';
import 'package:flutter_fest/view/compoents/appbar.dart';
import 'package:flutter_fest/view/compoents/bottombar.dart';
import 'compoents/button_widget.dart';
import 'compoents/profile_widget.dart';
import 'compoents/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppBar(
        text: "Profile",
      ),
      bottomNavigationBar: Bottombar(
        indexmenu: index,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Adı Soyadı',
            text: user.name,
            onChanged: (name) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (email) {},
          ),
          const SizedBox(height: 24),
          const SizedBox(height: 24),
          ButtonWidget(
              text: 'Kaydet!',
              onClicked: () => {
                    FancySnackbar.showSnackbar(
                      context,
                      snackBarType: FancySnackBarType.success,
                      title: "Kaydedildi!",
                      message: "Aferim Aslan Parçası Adam ol!",
                      duration: 3,
                      onCloseEvent: () {},
                    ),
                  })
        ],
      ),
    );
  }
}
