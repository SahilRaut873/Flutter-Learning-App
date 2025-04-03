import 'package:flutter/material.dart';
import 'package:learning_stud/view/maindrawer.dart';
import 'package:learning_stud/view/professional_login/p_maindrawer.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Course"),
        backgroundColor: Color.fromRGBO(47, 57, 127, 1),
      ),
      drawer:const ProfMainDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bkg.png"),fit: BoxFit.cover)
        ),
      ),
       //drawer:const MainDrawer(),
    );
  }
}