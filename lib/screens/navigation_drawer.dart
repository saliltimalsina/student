import 'package:flutter/material.dart';
import 'cartscreen.dart';
import 'homescreen.dart';
import 'profilescreen.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  int _SelectedIndex = 0;
  List<Widget> lstWidget = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstWidget[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: "profile"),
        ],
        backgroundColor: Color.fromARGB(255, 213, 212, 206),
        currentIndex: _SelectedIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Color.fromARGB(255, 126, 167, 195),
        elevation: 10,
        onTap: (index) {
          setState(() {
            _SelectedIndex = index;
          });
        },
      ),
    );
  }
}
