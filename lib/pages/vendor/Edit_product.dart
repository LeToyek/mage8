import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/vendor/Product_page.dart';
import 'package:mage8/widgets/Basic_textfield.dart';
import 'package:mage8/widgets/Headlined_button.dart';

class EditProduct extends StatelessWidget {
  final Product product;
  const EditProduct({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: onBackground,
            )),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              children: [
                InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        height: 160,
                        width: double.infinity,
                        child: Image.network(
                          product.imagePath,
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                BasicTextField(context, "Nama", ""),
                BasicTextField(context, "Harga", ""),
              ],
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.access_alarm,
                        size: 24,
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          primary: error),
                    )),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 4,
                      child: HeadlinedButton(context, "SIMPAN", () {
                        Navigator.pop(context);
                      }),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
