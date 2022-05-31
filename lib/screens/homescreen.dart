import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Shared Preferences'),
          elevation: 0,
          centerTitle: true),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                hintText: "Enter your name", border: OutlineInputBorder()),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Save data')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Save data')),
        ],
      ),
    );
  }
}
