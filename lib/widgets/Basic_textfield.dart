import 'package:flutter/material.dart';

Widget BasicTextField(BuildContext context, String label, hint) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
        border: Border.all(
            width: 1,
            color: Theme.of(context).primaryColor,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(8)),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
        ),
        TextField(
          style: TextStyle(fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              hintText: hint, isDense: true, border: InputBorder.none),
        )
      ],
    ),
  );
}
