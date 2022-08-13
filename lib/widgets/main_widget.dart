import 'package:flutter/material.dart';

class UserWg extends StatelessWidget {
  const UserWg({
    Key? key,
    required this.labeltext,
  }) : super(key: key);

  final String labeltext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 15),
      child: TextField(
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          prefixIcon: Icon(Icons.account_circle_rounded),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          labelText: labeltext,
        ),
      ),
    );
  }
}

class PasswordWg extends StatefulWidget {
  PasswordWg({Key? key}) : super(key: key);

  @override
  State<PasswordWg> createState() => _PasswordWgState();
}

class _PasswordWgState extends State<PasswordWg> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 15),
      child: TextField(
        obscureText: passwordVisible,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            prefixIcon: const Icon(Icons.key),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            labelText: 'password',
            suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  passwordVisible ? Icons.visibility_off : Icons.visibility,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                })),
      ),
    );
  }
}

class LoginBtnWg extends StatelessWidget {
  const LoginBtnWg({
    Key? key,
    required this.colors,
    required this.textbtn,
    required this.width,
    required this.heigth,
    required this.shadowcolor,
    required this.press,
  }) : super(key: key);

  final Color colors;
  final Color shadowcolor;
  final String textbtn;
  final double width, heigth;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: colors,
            shadowColor: shadowcolor,
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0)),
            minimumSize: Size(width, heigth), //////// HERE
          ),
          onPressed: press,
          child: Text(
            textbtn,
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}
