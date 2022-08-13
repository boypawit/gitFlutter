import 'package:flutter/material.dart';

Future<String?> aleartDialog(
    BuildContext context, String assetImage, Color colors, String decription) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      actions: <Widget>[
        Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(assetImage),
                  width: 80,
                  height: 80,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(decription),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(90, 40), //////// HERE
                ),
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text(
                  'เข้าใจแล้ว',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
