import 'package:flutter/material.dart';
import 'package:math_6/Welcome.dart';
import 'package:math_6/chapters.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'Welcome',
    routes : {
      'Welcome':(context) => MyWelcome(),
      'chapters':(context) => MyChapters(),

      },

  ));
}