import 'package:flutter/material.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/widgets/vendorTile.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({Key? key}) : super(key: key);

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                const Spacer(),
                Text(
                  "Antrian ke",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "5",
                  style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text("Estimasi"),
                Text(
                  "2 Jam 30 Menit",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: midGrey),
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}
