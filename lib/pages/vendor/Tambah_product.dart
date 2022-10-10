import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/widgets/Basic_textfield.dart';
import 'package:mage8/widgets/Headlined_button.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

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
                  child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8),
                      color: Theme.of(context).primaryColor,
                      dashPattern: [10, 10],
                      strokeWidth: 2,
                      child: Container(
                        height: 160,
                        width: double.infinity,
                        child: Center(
                            child:
                                // Image.asset('assets/icons/gallery.png', height: 40),
                                Icon(
                          Icons.add,
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        )),
                      )),
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
                child: HeadlinedButton(context, "SIMPAN", () {
                  Navigator.pop(context);
                }))
          ],
        ),
      ),
    );
  }
}
