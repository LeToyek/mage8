import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mage8/Model/Vendor.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/Detail_page.dart';
import 'package:mage8/provider/provider.dart';

class VendorTile extends StatelessWidget {
  final Vendor vendor;
  VendorTile({required this.vendor});
  String checkStatus() {
    if (vendor.status == Status.normal) {
      return "Normal";
    } else if (vendor.status == Status.ramai) {
      return "Ramai";
    } else {
      return "Sepi";
    }
  }

  Color checkStatusColor() {
    if (vendor.status == Status.normal) {
      return normal;
    } else if (vendor.status == Status.ramai) {
      return error;
    } else {
      return success;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          )),
      child: Container(
        width: double.infinity,
        height: 90,
        margin: const EdgeInsets.only(bottom: 24),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 90,
                  height: 90,
                  color: Colors.red,
                )),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(vendor.title,
                    style: GoogleFonts.nunito(
                        fontSize: 14, fontWeight: FontWeight.bold)),
                const Divider(
                  color: onBackground,
                  thickness: 1,
                ),
                Text(
                  vendor.description,
                  style: const TextStyle(fontSize: 12),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        vendor.distance.toString() + " km",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        checkStatus(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: checkStatusColor()),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
