import 'package:flutter/material.dart';

class DashScreen extends StatelessWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
               label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile")
        ],
      ),
    );
  }
}
