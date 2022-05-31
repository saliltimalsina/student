import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 500,
                color: Colors.amberAccent,
                child: const Text('1'),
              ),
            ),
            Expanded(
              child: Container(
                height: 500,
                color: const Color.fromARGB(255, 9, 97, 112),
                child: const Text('2'),
              ),
            ),
          ],
        )));
  }
}
