import 'package:flutter/material.dart';

import '../services/navigators_service.dart';
import '../widgets/appbar_widget.dart';
import 'openbill/choose_costomer.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleText: "POS Version 1.0",
        colorsApp: Colors.transparent,
        colorsBar: Colors.red,
        iconLead: const Icon(Icons.location_on),
        pressLeading: () {
          print("22");
        },
        iconAction: const Icon(Icons.settings),
        pressActions: () {
          print("OK");
        },
      ),
      body: Column(
        children: const [
          Text("Show data"),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          pushtopage(context, ChooseCostomers());
        },
        icon: const Icon(Icons.document_scanner),
        label: const Text(
          'ซื้อสินค้า',
          style: TextStyle(letterSpacing: 0, fontSize: 16),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
