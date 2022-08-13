import 'package:flutter/material.dart';

import '../../services/alear_dialog.dart';
import '../../services/navigators_service.dart';
import '../../widgets/appbar_widget.dart';

class ChooseCostomers extends StatefulWidget {
  ChooseCostomers({Key? key}) : super(key: key);

  @override
  State<ChooseCostomers> createState() => _ChooseCostomersState();
}

class _ChooseCostomersState extends State<ChooseCostomers> {
  final List<Map<String, dynamic>> allUserMap = [
    {"id": 1, "name": "Andy", "age": 29},
    {"id": 2, "name": "Aragon", "age": 40},
    {"id": 3, "name": "Bob", "age": 5},
    {"id": 4, "name": "Barbara", "age": 35},
    {"id": 5, "name": "Candy", "age": 21},
    {"id": 6, "name": "Colin", "age": 55},
    {"id": 7, "name": "Audra", "age": 30},
    {"id": 8, "name": "Banana", "age": 14},
    {"id": 9, "name": "Caversky", "age": 100},
    {"id": 10, "name": "Becky", "age": 32},
  ];

  List<Map<String, dynamic>> foundUsersMap = [];

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
        Duration.zero,
        () => aleartDialog(
            context, "assets/images/logo.png", Colors.red, "กรุณารอ"));
    foundUsersMap = allUserMap;

    super.initState();
  }

  // This function is called whenever the text field changes
  void runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = allUserMap;
    } else {
      results = allUserMap
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      foundUsersMap = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleText: "เลือกชื่อลูกค้า",
        colorsApp: Colors.green,
        colorsBar: Colors.white,
        iconLead: const Icon(Icons.close_sharp),
        pressLeading: () {
          poptopage(context);
        },
        iconAction: const Icon(Icons.notifications),
        pressActions: () {
          print("OK");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'ค้นหา', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: foundUsersMap.isNotEmpty
                  ? ListView.builder(
                      itemCount: foundUsersMap.length,
                      itemBuilder: (context, index) => Card(
                            key: ValueKey(foundUsersMap[index]["id"]),
                            color: Colors.greenAccent,
                            elevation: 4,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                              leading: Text(
                                foundUsersMap[index]["id"].toString(),
                                style: const TextStyle(fontSize: 24),
                              ),
                              title: Text(foundUsersMap[index]['name']),
                              subtitle: Text(
                                  '${foundUsersMap[index]["age"].toString()} years old'),
                            ),
                          ))
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
