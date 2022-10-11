import 'package:flutter/material.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/Account_page.dart';
import 'package:mage8/pages/queue/Queue_list_page.dart';

PreferredSizeWidget SearchAppBar(
    BuildContext context, String hint, Function funcTarget) {
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    actions: [
      IconButton(
          icon: Icon(Icons.ring_volume),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => QueueListPage()))),
      SizedBox(
        width: 8,
      )
    ],
    leading: Container(
      margin: EdgeInsets.only(left: 24),
      child: InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AccountPage())),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.red,
            backgroundImage: NetworkImage(
                "https://www.dailysia.com/wp-content/uploads/2021/08/Windah-Basudara-660x400.jpg"),
          )),
    ),
    title: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 16),
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            suffixIcon: IconButton(
                onPressed: () {
                  funcTarget();
                },
                icon: Icon(
                  Icons.search,
                  color: midGrey,
                ))),
      ),
    ),
  );
}
