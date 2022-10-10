import 'package:flutter/material.dart';
import 'package:mage8/constants/color.dart';

PreferredSizeWidget WhiteAppBar(String title, BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back, color: onBackground)),
    backgroundColor: background,
    title: Text(
      title,
      style: TextStyle(color: onBackground),
    ),
  );
}
