import 'package:flutter/material.dart';
import 'package:moneycath/page/main_page.dart';
import 'package:moneycath/page/splash_page.dart';

import '../../widgets/appbar_widget.dart';

class StartPageBar extends StatefulWidget {
  StartPageBar({
    Key? key,
  }) : super(key: key);

  @override
  State<StartPageBar> createState() => _StartPageBarState();
}

class _StartPageBarState extends State<StartPageBar> {
  int _selectedPage = 0;
  List<Widget> pageList = [];
  Color colorStart = Colors.grey;
  Color colorSelect = Colors.redAccent;

  @override
  void initState() {
    //get share pref
    pageList.add(MainPage());

    /*pageList.add(SpalshPage());

    pageList.add(SpalshPage());

    pageList.add(SpalshPage());*/

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.black, size: 25),
        selectedItemColor: colorSelect,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sticky_note_2_outlined,
              color: colorStart,
            ),
            activeIcon: Icon(
              Icons.sticky_note_2_outlined,
              color: colorSelect,
            ),
            label: 'ข้อมูลบิล',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: colorStart,
            ),
            activeIcon: Icon(
              Icons.wallet,
              color: colorSelect,
            ),
            label: 'ข้อมูลสินค้า',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              color: colorStart,
            ),
            activeIcon: Icon(
              Icons.supervised_user_circle,
              color: colorSelect,
            ),
            label: 'ข้อมูลลูกค้า',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_half_rounded,
              color: colorStart,
            ),
            activeIcon: Icon(
              Icons.star_half_rounded,
              color: colorSelect,
            ),
            label: 'สะสมแต้ม',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedPage,
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
