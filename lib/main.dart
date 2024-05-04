import 'package:flutter/material.dart';
import 'package:salsabil/components/navbar.dart';
import 'package:salsabil/map/first_screen_map.dart';
import 'package:salsabil/pages/hellocreen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}
