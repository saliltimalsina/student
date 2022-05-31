import 'package:flutter/material.dart';

class Mediaquery extends StatefulWidget {
  const Mediaquery({Key? key}) : super(key: key);

  @override
  State<Mediaquery> createState() => _MediaqueryState();
}

class _MediaqueryState extends State<Mediaquery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
                'https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg?cs=srgb&dl=pexels-pixabay-60597.jpg&fm=jpg'),
          ),
        ),
      ),
    );
  }
}
