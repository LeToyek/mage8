import 'package:flutter/material.dart';
import 'package:mage8/Model/static/Category.dart';

class CategoryTile extends StatelessWidget {
  final Category category;

  CategoryTile({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: Color(int.parse("0xFF${category.color}")),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          "${category.icon} ${category.name}",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
