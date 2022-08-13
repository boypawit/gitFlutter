import 'package:flutter/material.dart';
import 'package:moneycath/page/login_page.dart';

import '../services/navigators_service.dart';

class SpalshPage extends StatefulWidget {
  SpalshPage({Key? key}) : super(key: key);

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),
        () => pushAndRemoveUntilPage(context, LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: const Image(
        image: AssetImage("assets/images/logo.png"),
        width: 130,
        height: 130,
      ),
    );
  }
}
