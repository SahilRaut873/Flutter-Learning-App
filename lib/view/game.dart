
import 'package:flutter/material.dart';
import 'package:learning_stud/model/curved_appbar.dart';
import 'package:learning_stud/view/bottom_navigation.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: ClipPath(
            clipper: CustomAppBarClipper(),
            child: AppBar(
              title: Text('Game',
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
                    MaterialPageRoute(builder: ((context) => BottomBar())));
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