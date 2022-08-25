import 'package:flutter/material.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/Quque_page.dart';
import 'package:mage8/provider/provider.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 300,
        height: 230,
        padding: EdgeInsets.fromLTRB(18, 28, 18, 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Column(
          children: [
            Text(
              "Tambah Antrian",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              messageDialog,
              textAlign: TextAlign.center,
              style: TextStyle(color: midGrey),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(primary: error),
                      child: Text("Batal")),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QueuePage(),
                            ));
                      },
                      child: Text("Lanjut")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
