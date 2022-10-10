import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/widgets/Basic_textfield.dart';
import 'package:mage8/widgets/White_appbar.dart';

class InputVendorDataPage extends StatelessWidget {
  const InputVendorDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteAppBar("Masukkan Data Toko", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              BasicTextField(context, "Nama", "John Doe"),
              DescTextField(context, "Description", ""),
              BasicTextField(context, "Kategori", "makanan"),
              DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(8),
                  color: Theme.of(context).primaryColor,
                  dashPattern: [10, 10],
                  strokeWidth: 2,
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    child: Center(
                      child:
                          Image.asset('assets/icons/gallery.png', height: 40),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget DescTextField(BuildContext context, String label, String hint) {
    return Container(
      width: double.infinity,
      height: 140,
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
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
          ),
          TextField(
            maxLines: null,
            style: TextStyle(fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                hintText: hint, isDense: true, border: InputBorder.none),
          )
        ],
      ),
    );
  }
}
