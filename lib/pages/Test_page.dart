import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEST"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Container(
              color: Colors.green,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Image.network(
                          'https://assets.pikiran-rakyat.com/crop/0x508:821x1011/x/photo/2022/04/26/2747824482.jpg',
                          height: 200,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title"),
                      Divider(),
                      Text(
                          "Descriptioonnnn Descriptioonnnn Descriptioonnnn Descriptioonnnn Descriptioonnnn Descriptioonnnn"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
