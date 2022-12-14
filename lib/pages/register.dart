import 'package:flutter/material.dart';
import 'package:mage8/pages/homepage.dart';
import 'package:mage8/widgets/Basic_textfield.dart';
import 'package:mage8/widgets/Headlined_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Masukkan Data Dirimu",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 24,
                ),
                BasicTextField(context, "Nama", "John Doe"),
                const SizedBox(
                  height: 24,
                ),
                BasicTextField(context, "Nomor HP", "08xx-xxxx-xxxx")
              ],
            ),
            Spacer(),
            HeadlinedButton(
                context,
                "SIMPAN",
                () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage())))
          ],
        ),
      ),
    );
  }
}
