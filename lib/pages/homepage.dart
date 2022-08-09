import 'package:flutter/material.dart';
import 'package:mage8/constants/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: new Material(
              shape: new CircleBorder(),
            ),
          )),
      body: Container(),
    );
  }
}
