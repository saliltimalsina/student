import 'package:flutter/material.dart';
import 'package:student_registration/screens/load_image.dart';
import 'package:student_registration/screens/registerd_screen.dart';
import 'package:student_registration/screens/toast_test.dart';
import './screens/media_query.dart';

import 'screens/expandend.dart';
import 'screens/grid_screen.dart';
import 'screens/card_screen.dart';
import 'screens/person.dart';
import 'screens/navigation_drawer.dart';
import 'screens/myHome.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/myhome",
      routes: {
        "/": (context) => const Mediaquery(),
        "/display": (context) => const DisplayStudentScreen(),
        "/Expanded": (context) => const ExpandedScreen(),
        "/grid": (context) => const GridScreen(),
        "/loadimage": (context) => const LoadImage(),
        "/Toast": (context) => const ToastTest(),
        "/card": (context) => CardScreen(),
        "/personcard": (context) => PersonCard(),
        "/navigationdrawer": (context) => const NavigationDrawer(),
        "/myhome": (context) => const HomeScreen(),
      },
    ),
  );
}
