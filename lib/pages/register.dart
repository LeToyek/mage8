import 'package:flutter/material.dart';

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
              children: [
                Text("Masukkan Data Dirimu"),
                const SizedBox(
                  height: 24,
                ),
                myTextField(context, "Nama"),
                const SizedBox(
                  height: 24,
                ),
                myTextField(context, "Nomor HP")
              ],
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Simpan"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myTextField(
    BuildContext context,
    String label,
  ) {
    return TextField(
      decoration: InputDecoration(
          labelText: label,
          hoverColor: Theme.of(context).primaryColor,
          isDense: true,
          focusColor: Theme.of(context).primaryColor,
          hintText: "asdkaosk",
          labelStyle: TextStyle(color: Theme.of(context).primaryColor),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor))),
    );
  }
}
