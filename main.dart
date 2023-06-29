import 'package:flutter/material.dart';
import 'package:login_app/loginpage.dart';
import 'package:login_app/resisterpage.dart';

void main(){
  runApp(MainScreen());
}
class MainScreen extends StatefulWidget {


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Loginpage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

