
import 'package:flutter/material.dart';
import 'package:learning_stud/model/curved_appbar.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';

class ProfGameScreen extends StatefulWidget {
  const ProfGameScreen({super.key});

  @override
  State<ProfGameScreen> createState() => _ProfGameScreenState();
}

class _ProfGameScreenState extends State<ProfGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: ClipPath(
            clipper: CustomAppBarClipper(),
            child: AppBar(
              title: Text('Games',
              style: TextStyle(
                fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
              ),
              backgroundColor: Color.fromRGBO(48, 54, 124, 1),
              centerTitle: true,
              leadingWidth: 100,
              leading: IconButton.outlined(
                
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => ProfBottomBar())));
                //Navigator.pop(context);
              }),
              ),
              
            ),
          ),
      body: Center(
        child: Text("Games are coming soon...!"),
      ),
    );
  }
}