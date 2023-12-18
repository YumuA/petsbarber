import 'package:flutter/material.dart';
import 'views/login.dart';

void main() {
  runApp(PetsApp());
}

class PetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pets Barber App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
