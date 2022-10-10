import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/homepage.dart';
import 'package:mage8/pages/vendor/Input_data_page.dart';
import 'package:mage8/provider/provider.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
      body: Consumer(builder: (context, ref, child) {
        final accountData = ref.watch(accountProvider);
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(accountData.imageURL),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  accountData.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(accountData.phone),
                const SizedBox(
                  height: 32,
                ),
                NewIconButton(
                    context,
                    "Gabung PKL",
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => InputVendorDataPage()))),
                SizedBox(
                  height: 16,
                ),
                NewIconButton(
                    context,
                    "Halaman Utama",
                    () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomePage()))),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: error),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: Text("KELUAR"),
                        ),
                      )),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget NewIconButton(BuildContext context, String title, Function todo) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () => todo(),
            style: ElevatedButton.styleFrom(
                side:
                    BorderSide(color: Theme.of(context).primaryColor, width: 1),
                primary: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/store.svg'),
                  Spacer(),
                  Text(
                    title,
                    style: TextStyle(color: pBlue),
                  ),
                  Spacer(),
                  SizedBox()
                ],
              ),
            )));
  }
}
