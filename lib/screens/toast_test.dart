import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastTest extends StatefulWidget {
  const ToastTest({Key? key}) : super(key: key);

  @override
  State<ToastTest> createState() => _ToastTestState();
}

class _ToastTestState extends State<ToastTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          onPressed: (() {
            Fluttertoast.showToast(
              msg: 'i am toast',
              toastLength: Toast.LENGTH_SHORT,
            );
          }),
          child: const Text('Toast'),
        ),
      )),
    );
  }
}
