import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          )),
      body: Column(
        children: [
          Row(),
          const Spacer(),
          const Divider(),
          Row(
            children: [
              ElevatedButton.icon(
                  onPressed: () {}, icon: Icon(Icons.abc), label: Text("data"))
            ],
          )
        ],
      ),
    );
  }
}
