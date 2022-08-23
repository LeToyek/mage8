import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/constants/color.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 64,
                backgroundColor: Colors.red,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "John Doe",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text("08xx-xxxx-xxxx"),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1),
                        primary: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/store.svg'),
                          Spacer(),
                          Text(
                            "GABUNG PKL",
                            style: TextStyle(color: pBlue),
                          ),
                          Spacer(),
                          SizedBox()
                        ],
                      ),
                    )),
              ),
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
      ),
    );
  }
}
