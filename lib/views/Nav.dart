import 'package:flutter/material.dart';
import 'package:petsbarber/views/home.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}): super(key : key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {

  int _actualPage = 0;

  List<Widget> _Pages = [
];

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: _Pages[_actualPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _actualPage = index;
          });
        },
        currentIndex: _actualPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: "Profile"),
        ],
      ),
    );
  }
}



