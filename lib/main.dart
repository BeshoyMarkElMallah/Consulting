import 'package:flutter/material.dart';

import 'package:project1/screens/consultingScreen.dart';
import 'package:project1/screens/signUpAdmin.dart';
import 'package:project1/screens/signUpScreen.dart';
import 'package:project1/screens/timePickerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Project",
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.black)
          // .copyWith(secondary: Colors.grey),
          ),
      home: SignUpScreenAdmin(),
      routes: {
        ConsultingScreen.routename: (ctx) => ConsultingScreen(),
        SignUpScreen.routename: (ctx) => SignUpScreen(),
        TimePickerScreen.routename: (ctx) => TimePickerScreen(),
      },
    );
  }
}
