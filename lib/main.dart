import 'package:exam_two/Screen/homeScreen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
     '/':(context) => HomeScreen()
    },
  ));
}