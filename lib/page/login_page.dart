import 'package:flutter/material.dart';
import 'package:moneycath/page/bottombar/startpage_bar.dart';
import 'package:moneycath/page/main_page.dart';
import 'package:moneycath/services/navigators_service.dart';

import '../widgets/main_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/images/logo.png"),
            width: 130,
            height: 130,
          ),
          const UserWg(
            labeltext: 'user',
          ),
          PasswordWg(),
          LoginBtnWg(
            colors: Colors.green,
            shadowcolor: Colors.greenAccent,
            width: 200,
            heigth: 50,
            textbtn: 'เข้าสู่ระบบ',
            press: () {
              pushAndRemoveUntilPage(context, StartPageBar());
            },
          )
        ],
      ),
    );
  }
}
