import 'package:flutter/material.dart';

Widget HeadlinedButton(
    BuildContext context, String title, Function destination) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style:
          ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 16)),
      onPressed: () {
        destination();
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    ),
  );
}
