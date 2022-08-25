import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
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
