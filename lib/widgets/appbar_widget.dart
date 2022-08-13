import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    required this.titleText,
    required this.pressLeading,
    required this.pressActions,
    required this.iconLead,
    required this.iconAction,
    required this.colorsApp,
    required this.colorsBar,
  }) : super(key: key);

  final String titleText;
  final Icon iconLead;
  final VoidCallback pressLeading;
  final Icon iconAction;
  final VoidCallback pressActions;
  final Color colorsApp;
  final Color colorsBar;

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colorsApp,
      elevation: 0,
      leading: IconButton(
        onPressed: pressLeading,
        icon: iconLead,
        color: colorsBar,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titleText,
            style: TextStyle(color: colorsBar),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: pressActions,
          color: colorsBar,
          icon: iconAction,
        )
      ],
    );
  }
}
