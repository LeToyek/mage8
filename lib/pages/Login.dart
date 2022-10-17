import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/Register.dart';
import 'package:mage8/provider/user_provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/images/login.svg",
                height: 152,
              ),
              const SizedBox(
                height: 72,
              ),
              Text("Masuk", style: Theme.of(context).textTheme.headline6!),
              Container(
                width: 200,
                margin: const EdgeInsets.only(top: 8),
                child: const Text(
                  "Dengan menekan tombol di bawah, Anda menyetujui kebijakan privasi kami",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: midGrey),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    var user = ref.read(userProvider.notifier);
                    user.loginUser();
                    var token = FlutterSecureStorage().read(key: "token");
                    print(token);
                  },
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1),
                      primary: Colors.white),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/icons/google-icon.png",
                            width: 32,
                          ),
                          Text(
                            "Masuk dengan google",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(),
                        ],
                      ))),
            ],
          ),
        ),
      )),
    );
  }
}
