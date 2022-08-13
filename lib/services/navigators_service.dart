import 'package:flutter/material.dart';

Future pushAndRemoveUntilPage(BuildContext context, dynamic pushtopage) {
  return Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => pushtopage),
      (Route<dynamic> route) => false);
}

Future pushtopage(BuildContext context, dynamic pushtopage) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pushtopage),
  );
}

poptopage(BuildContext context) {
  Navigator.pop(context);
}
