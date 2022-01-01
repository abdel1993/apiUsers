import 'package:flutter/material.dart';
import 'package:newusers/view/homapage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Users",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
